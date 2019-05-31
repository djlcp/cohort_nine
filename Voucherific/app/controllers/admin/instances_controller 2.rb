class Admin::InstancesController < ApplicationController

    def index
      
    end


    def all
      @instances = Instance.all
    end

    
    def redeemed
      @instances = Instance.where.not(vendor_id: nil)
    end
 
    #def expired
    #	@expired = Instance.where(:expiry_date => Date.current)
    #end

 	def paid
 		@paid = Instance.where.not(paid_at: nil)
 	end



  end