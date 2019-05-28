class Admin::InstancesController < ApplicationController

    def index
      
    end


    def all
      @instances = Instance.all
    end

    
    def redeemed
      @instances = Instance.where.not(vendor_id: nil)
    end
 
    
  end