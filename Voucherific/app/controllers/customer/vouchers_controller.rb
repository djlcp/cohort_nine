class Customer::VouchersController < ApplicationController
    #before_action :set_post, only: [:show, :edit, :update, :destroy, :new, :create]
    #load_and_authorize_resource
    def index
        today = DateTime.now
        @vouchers = Voucher.where(customer_id: current_user.id)
        #@expiry = Voucher.find(params[:created_at]) - 30.days.ago
      end
    
    # click on a template and open for information about specific template


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
        @user = current_user.first_name
        render "_custom"
    end

    def email_notice
        @voucher = params[:voucher_number]
        @user = current_user.email
        @user_first = current_user.first_name
        @voucher_desc = params[:voucher_desc]
        @user_id = current_user.id
        #Voucher.where(template_id: template.id, customer_id: current_user.id).first %>
        unless(flash.now[:notice])
            NotificationMailer.voucher_notif(@user, @voucher, @voucher_desc, @user_first, @user_id).deliver
        end
        #flash.now[:error] = "You have not updated."
        flash[:notice] = "#{current_user.email}"
        redirect_to customer_vouchers_path #"generate-success-sent"
    end

    def voucher_params
        params.require(:voucher).permit(:template_id, :customer_id)
    end
end