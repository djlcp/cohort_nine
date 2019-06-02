class Admin::VouchersController < ApplicationController

    def index
      @vouchers = Voucher.all
    end

    def new
      @voucher = Voucher.new
    end

    def create
      @voucher = Voucher.new(voucher_params)

      if @voucher.save
          redirect_to [:admin, @voucher]
      else
          render 'new'
      end
    end

    def show
        @voucher = Voucher.find(params[:id])
        @instance = Instance.where(voucher_id: @voucher.id).first
    end

    def update
        @voucher = Voucher.find(params[:id])

        if @voucher.update(voucher_params)
            redirect_to [:admin, @voucher]
        else
            render 'edit'
        end
    end

    def edit
        @voucher = Voucher.find(params[:id])
    end

    def destroy
        @voucher = Voucher.find(params[:id])
        @voucher.destroy
        redirect_to admin_vouchers_path
    end

    def disable
        @voucher = Voucher.find(params[:id])
        @voucher.is_inactive = true
        @voucher.save
        redirect_to admin_vouchers_path
    end

    def restore
        @voucher = Voucher.find(params[:id])
        @voucher.is_inactive = false
        @voucher.save
        redirect_to admin_vouchers_path
    end
 

    private

    def voucher_params
        params.require(:voucher).permit(:value, :description)
    end
end