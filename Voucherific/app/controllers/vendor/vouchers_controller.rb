class Vendor::VouchersController < ApplicationController


    def index
        @vouchers = Voucher.all
    end

    def search
        @vouchers = Voucher.all
        @search = params["search"]
        if @search.present?
            @id = @search["id"]
            @voucher = Voucher.where(id: @id).first
        end
    end

	def show
        @voucher = Voucher.find(params[:id])
	end
	
	def edit
        @pvoucher = Voucher.find(params[:id])

        if @voucher.update(post_params)
            redirect_to @voucher
        else
            render 'edit'
        end
    end

end