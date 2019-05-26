class Customer::InstancesController < ApplicationController
    #before_action :set_post, only: [:show, :edit, :update, :destroy, :new, :create]
    #load_and_authorize_resource
    def index
        @instance = Instance.all
        #@instance.user_id = current_user.id
      end
    
    
    # click on a voucher and open for information about specific voucher
    def show
    #@user = User.find(params[:id])
    @instance.user_id = current_user.id
    @instance = Instance.find(params[:id])
    end

    # generate new voucher

    def new
    @instance = Instance.new
    end
    
    def create
        @instance = Instance.new(instance_params)

        respond_to do |format|
        if @instance.save
            format.html { redirect_to @instance, notice: 'Voucher instance was successfully created.' }
            format.json { render :show, status: :created, location: @instance }
        else
            format.html { render :new }
            format.json { render json: @instance.errors, status: :unprocessable_entity }
        end
        end
    end
end