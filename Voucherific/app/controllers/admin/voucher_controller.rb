class Admin::VouchersController < ApplicationController



   def index
     @voucher = Voucher.all
   end

   def show
     @voucher = Voucher.find(params[:id])
   end

   def index_outstanding
   	  @oustanding = Voucher.all.(is_redeemed? && !is_paid?)
   end

   def index_expired
   	  @expired = Voucher.all.expiry>today
   end

   def index_paid
   	@paid = Voucher.all.status="paid"
   end

   def edit
   	 @voucher = Voucher.find(params[:id])
     @voucher.[insert edit actions here]
     redirect_to vouchers_path
   end

   def destroy
     @voucher = Voucher.find(params[:id])
     @voucher.destroy
     redirect_to vouchers_path

   end
 end