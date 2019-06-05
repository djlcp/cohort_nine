class Customer::VouchersController < ApplicationController
    #before_action :set_post, only: [:show, :edit, :update, :destroy, :new, :create]
    #load_and_authorize_resource
    def index
        today = DateTime.now
        @vouchers = Voucher.where(customer_id: current_user.id).map do |voucher|
            if voucher && voucher.redeemed_at == nil  && (voucher.created_at < 30.days.ago ) 
                #binding.pry
                {voucher: voucher, status: "Trugfdfgde"}
            elsif voucher && voucher.redeemed_at != nil 
                {voucher: voucher, status: "True"}
            elsif voucher && (today - created_at > 2592000)
                {voucher: voucher, status: "True"}
            else
                {voucher: voucher, status: "True"}
            end
        end
      end
    
    # click on a template and open for information about specific template
    def show
        @voucher = Voucher.find(params[:id])
        @template = Voucher.find_by_id(params[:template_id])
    end

    # generate new template

    def templates
        @templates = Template.where(is_inactive: false)
    end

    def custom
        @template = Template.find(params[:id])
        @voucher = Voucher.new(template_id: @template.id, customer_id: current_user.id)
        if Voucher.last != nil 
            @voucher.number = Voucher.last.number + 1
        else
            @voucher.number = 1001
        end
        @voucher.save
        @user = current_user.email
        render "_custom"
    end

    def email_notice
        @voucher = params[:voucher_number]
        @user = current_user.email
        NotificationMailer.voucher_notif(@user, @voucher).deliver
        render "generate-success-sent"
    end

    def voucher_params
        params.require(:voucher).permit(:template_id, :customer_id)
    end
end