class Shop::InstancesController < ApplicationController

    def validate
        @number = params["validate"]
        if @number.present?
            @instance_number = @number["number"]
            @instance = Instance.where(number: @instance_number).first

            if @instance
                @created_at = @instance.created_at.to_i
                @today = DateTime.now.to_i
            end

            if @instance && (@instance.redeemed_on == nil ) && (@today - @created_at < 2592000) 
                @voucher_id = @instance.voucher_id
                @voucher = Voucher.where(id: @voucher_id).first
                render '_valid'
            elsif @instance && (@instance.redeemed_on != nil )
                render '_fail_redeemed'
            elsif @instance && (@today - @created_at > 2592000)
                render '_fail_expired'
            else
                render '_not_valid'
            end
        end

    end

    def redeem
        @instance = Instance.find(params[:id])
        @instance.redeemed_on = DateTime.now
        @instance.save
        render '_redeem'
	end

end