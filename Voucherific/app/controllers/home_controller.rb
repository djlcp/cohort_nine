class HomeController < ApplicationController
    def index
        @templates = Template.where(is_inactive: false)
        @vouchers = Voucher.all
    end
end