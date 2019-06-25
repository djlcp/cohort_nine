class Admin::VouchersController < ApplicationController

    before_action :authenticate_user!

    before_action :admin_check

    def index
        @vouchers = Voucher.all
        @search = params["search_voucher"]
        if @search.present?
          @number = @search["number"]
          @vouchers = Voucher.where(number: @number)
        else
          @vouchers = Voucher.all
        end    
    end


    def all
      
    end

    
    def redeemed
      @vouchers = Voucher.where(status == "Redeemed")
    end
  
    def expired
    	@vouchers = Voucher.where(status == "Expired")
    end
    
    def paid
 		@vouchers = Voucher.where(status == "Paid")
 	end


  def voucher_params
      params.require(:voucher).permit(:value, :description)
  end

  private  
  def admin_check
    if current_user.is_admin? != true
            redirect_to root_path     
    end
  end

end