class Customer::VouchersController < ApplicationController
  
  before_action :authenticate_user!

  # return list of vouchers that are assigned to a specific user
  def index
    @voucher = Voucher.all
  end

  # click on a voucher and open for information about specific vocuher
  def show
    @voucher = Voucher.find(params[:id])
  end

end
