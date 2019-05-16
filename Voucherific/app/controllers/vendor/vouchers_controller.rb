class Vendor::VouchersController < ApplicationController


    def index
        @vouchers = Voucher.all.order("created_at DESC")
    end

    def search
        @search = params["search"]
        if @voucher.present?
            @id = @search["search"]
            @voucher = Voucher.where(id: @id)
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