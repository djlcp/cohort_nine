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
        @instance = Instance.find(params[:id])
        @voucher = Instance.find_by_id(params[:voucher_id])
    end

    # generate new voucher

    def vouchers
        @vouchers = Voucher.all
    end

    def custom
        @voucher = Voucher.find(params[:id])
        @instance = Instance.new(voucher_id: @voucher.id, customer_id: current_user.id)
        if Instance.last != nil 
            @instance.number = Instance.last.number + 1
           
        else
            @instance.number = 1001
        end
        @instance.save
        render "_custom"
    end

    def instance_params
        params.require(:instance).permit(:voucher_id, :customer_id)
    end
end