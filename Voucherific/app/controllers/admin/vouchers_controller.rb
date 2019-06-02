class Admin::VouchersController < ApplicationController

    before_action :authenticate_user!

    before_action
    if current_user.is_admin != true
        redirect_to :back
    end
    

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



<<<<<<< HEAD
    def voucher_params
        params.require(:voucher).permit(:value, :description)
    end

end
=======
  end
>>>>>>> development
