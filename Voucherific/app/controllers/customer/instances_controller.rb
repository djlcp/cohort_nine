class Customer::InstancesController < ApplicationController
    #before_action :set_post, only: [:show, :edit, :update, :destroy, :new, :create]
    #load_and_authorize_resource
    def index
        @instances = Instance.all
        @voucher = Instance.find_by_id(params[:voucher_id])
        #@voucher = Voucher.where(id: @voucher_id).first
        #@voucher = Voucher.where(id: @voucher_id).first
        #@instance.user_id = current_user.id
      end
    
    
    # click on a voucher and open for information about specific voucher
    def show
    #@user = User.find(params[:id])
    #@instance.user_id = current_user.id
    @instance = Instance.find(params[:id])
    @voucher = Instance.find_by_id(params[:voucher_id])
    end

    # generate new voucher

    def new
    @instance = Instance.new
    @vouchers = Voucher.all
    @user_id = 1
    @user_email = "goeff@hotmail.com"
    end
    
    def create
        @instance = Instance.new(instance_params)
        @user_id = current_user(:id)
        
 
    end

    def this
        @vouchers = Voucher.all
    end
    
    def voucher
        @instance = Instance.new
        @vouchers = Voucher.all
        @user_id = 1
        @user_email = "goeff@hotmail.com"
    end
    
    def vouchers
        @instance = Instance.new
        @vouchers = Voucher.all
        @user_id = 1
        @user_email = "goeff@hotmail.com"
    end
end