class Customer::VouchersController < ApplicationController
  
  #before_action :authenticate_user!

  # return list of vouchers that are assigned to a specific user
  def index
    @instance = Instance.new
    @vouchers = Voucher.all
    @user_id = 1
    @user_email = "goeff@hotmail.com"
    @instances = Instance.all
    @voucher = Instance.find_by_id(params[:voucher_id])
    #@voucher = Voucher.where(id: @voucher_id).first
    #@voucher = Voucher.where(id: @voucher_id).first
    #@instance.user_id = current_user.id
  end


  # click on a voucher and open for information about specific voucher
  def show
    @voucher = Voucher.find(params[:id])
  end

  # generate new voucher

  def create
    @voucher = Instance.new
  end

end