class Shop::VouchersController < ApplicationController

    before_action :authenticate_user!

    before_action :vendor_check

    #def index

    #end

    def validate
        @number = params["validate"]
        if @number.present?
            @voucher_number = @number["number"]
            @voucher = Voucher.where(number: @voucher_number).first

            if @voucher
                @created_at = @voucher.created_at.to_i
                @today = DateTime.now.to_i
            end

            if @voucher && (@voucher.redeemed_at == nil ) && (@today - @created_at < 2592000) 
                @template_id = @voucher.template_id
                @template = Template.where(id: @template_id).first
                render '_valid'
            elsif @voucher && (@voucher.redeemed_at != nil )
                render '_fail_redeemed'
            elsif @voucher && (@today - @created_at > 2592000)
                render '_fail_expired'
            else
                render '_not_valid'
            end
        end

    end

    def redeem
        @voucher = Voucher.find(params[:id])
        @voucher.redeemed_at = DateTime.now
        @voucher.vendor_id = current_user.id
        @voucher.save
        render '_redeem'
	end

    private
    def vendor_check
        if current_user.is_admin? != true && current_user.is_vendor? != true
            redirect_to root_path  
        end
    end

end