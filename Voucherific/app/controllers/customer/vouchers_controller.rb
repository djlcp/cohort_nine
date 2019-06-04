class Customer::VouchersController < ApplicationController
    #before_action :set_post, only: [:show, :edit, :update, :destroy, :new, :create]
    #load_and_authorize_resource
    def index
        @vouchers = Voucher.where(customer_id: current_user.id)
        #@template = template.where(id: @template_id).first
        #@template = template.where(id: @template_id).first
        #@voucher.user_id = current_user.id
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
        NotificationMailer.voucher_notif(@user, @voucher.number).deliver
        render "_custom"
    end

    def voucher_params
        params.require(:voucher).permit(:template_id, :customer_id)
    end
end