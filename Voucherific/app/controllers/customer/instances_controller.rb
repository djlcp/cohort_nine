class Customer::InstancesController < ApplicationController
    #before_action :set_post, only: [:show, :edit, :update, :destroy, :new, :create]
    #load_and_authorize_resource
    def index
        @instances = Instance.where(customer_id: current_user.id)
        @template = Instance.find_by_id(params[:template_id])
        #@template = template.where(id: @template_id).first
        #@template = template.where(id: @template_id).first
        #@instance.user_id = current_user.id
      end
    
    
    # click on a template and open for information about specific template
    def show
        @instance = Instance.find(params[:id])
        @template = Instance.find_by_id(params[:template_id])
    end

    # generate new template

    def templates
        @templates = Template.where(is_inactive: false)
    end

    def custom
        @template = Template.find(params[:id])
        @instance = Instance.new(template_id: @template.id, customer_id: current_user.id)
        if Instance.last != nil 
            @instance.number = Instance.last.number + 1
           
        else
            @instance.number = 1001
        end
        @instance.save
        render "_custom"
    end

    def instance_params
        params.require(:instance).permit(:template_id, :customer_id)
    end
end