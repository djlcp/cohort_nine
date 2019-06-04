class Customer::TemplatesController < ApplicationController
  
  #before_action :authenticate_user!

  # return list of templates that are assigned to a specific user
  def index
    @template = Template.all
  end


  # click on a template and open for information about specific template
  def show
    @template = Template.find(params[:id])
  end

  # generate new template

  def new
    @template = Template.new
  end

end