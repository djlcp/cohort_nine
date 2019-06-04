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

<<<<<<< HEAD
    # generate new template
=======
  # return list of vouchers that are assigned to a specific user
  def index
    @instance = Instance.new
    @vouchers = Voucher.all
    @user_id = 1
    @user_email = "goeff@hotmail.com"
    @instances = Instance.all
    @voucher = Instance.find_by_id(params[:voucher_id])
    #@voucher = Voucher.where(id: @voucher_id).first
    #@voucher = Voucher.where(id: @voucher_id).first
    #@instance.user_id = current_user.id
  end
>>>>>>> dc7bf14f8978bd1515f6cb9b015ee6288d1006f8

    def templates
        @templates = Template.where(is_inactive: false)
    end

<<<<<<< HEAD
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
=======
  # click on a voucher and open for information about specific voucher
  def show
    @voucher = Voucher.find(params[:id])
  end

  # generate new voucher

  def create
    @voucher = Instance.new
  end
>>>>>>> dc7bf14f8978bd1515f6cb9b015ee6288d1006f8

    def voucher_params
        params.require(:voucher).permit(:template_id, :customer_id)
    end
end