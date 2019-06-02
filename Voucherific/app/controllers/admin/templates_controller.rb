class Admin::TemplatesController < ApplicationController

    def index
      @templates = Template.all
    end

    def new
      @template = Template.new
    end

    def create
      @template = Template.new(template_params)

      if @template.save
          redirect_to [:admin, @template]
      else
          render 'new'
      end
    end

    def show
        @template = Template.find(params[:id])
        @instance = Instance.where(template_id: @template.id).first
    end

    def update
        @template = Template.find(params[:id])

        if @template.update(template_params)
            redirect_to [:admin, @template]
        else
            render 'edit'
        end
    end

    def edit
        @template = Template.find(params[:id])
    end

    def destroy
        @template = Template.find(params[:id])
        @template.destroy
        redirect_to admin_templates_path
    end

    def disable
        @template = Template.find(params[:id])
        @template.is_inactive = true
        @template.save
        redirect_to admin_templates_path
    end

    def restore
        @template = Template.find(params[:id])
        @template.is_inactive = false
        @template.save
        redirect_to admin_templates_path
    end
 

    private

    def template_params
        params.require(:template).permit(:value, :description)
    end
end