class Admin::VouchersController < ApplicationController

    def index
      @vouchers = Voucher.all
    end
 
end