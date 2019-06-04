class Admin::VouchersController < ApplicationController

    def index
      
    end


    def all
      @vouchers = Voucher.all
    end

    
    def redeemed
      @vouchers = Voucher.where.not(vendor_id: nil)
    end
 
    #def expired
    #	@expired = voucher.where(:expiry_date => Date.current)
    #end

 	def paid
 		@paid = Voucher.where.not(paid_at: nil)
 	end



  end