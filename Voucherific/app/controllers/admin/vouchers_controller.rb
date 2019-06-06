class Admin::VouchersController < ApplicationController

    before_action :authenticate_user!

    before_action :admincheck
    



    def index
             
    end


    def all
      @vouchers = Voucher.all
    end

    
    def redeemed
      @vouchers = Voucher.where.not(vendor_id: nil)
    end
 
    def expired
    	@vouchers = Voucher.where('expiry_date >= ?', (Date.current))
    end

 	def paid
 		@vouchers = Voucher.where.not(paid_at: nil)
 	end


 #   def voucher_params
  #      params.require(:voucher).permit(:value, :description)
  #  end

  private
    def admincheck
      if current_user.is_admin? != true
        redirect_to root_path
    
      
  end

end

end