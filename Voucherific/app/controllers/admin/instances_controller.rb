class Admin::InstancesController < ApplicationController

    def index
      @instances = Instance.all
    end
 
    
  end