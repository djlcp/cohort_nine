class Vendor::VouchersController < ApplicationController


    def index
        @vouchers = Voucher.all
    end

    def search
        @voucher = Voucher.where(id: @id).first
        @search = params["search"]
        if @search.present?
            @id = @search["id"]
            
            if @voucher = Voucher.where(id: @id, status: "valid").first
                render '_valid'
            elsif @voucher = Voucher.where(id: @id).first
                render '_expired_or_redeemed' 
            else
                render '_not_valid'
            end
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