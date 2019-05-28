class Admin::VoucherController < ApplicationController



   def index
     @voucher = Voucher.all
   end

   def show
     @voucher = Voucher.find(params[:id])
   end

   def index_outstanding
   	  #the booleans is_redeemed and is_paid don't currently exist but Anca making something comparable
   	  @oustanding = Voucher.where(Voucher.is_redeemed?).where(Voucher.!is_paid?)
   end

   def index_expired
   	  @expired = Voucher.where(:expiry_date => Date.current)
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