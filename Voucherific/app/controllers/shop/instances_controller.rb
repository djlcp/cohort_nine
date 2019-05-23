class Shop::InstancesController < ApplicationController


    def index
        @instances = Instance.all
        
    end

    def search
        @instance = Instance.where(id: @id).first
        @search = params["search"]
        if @search.present?
            @id = @search["id"]
            
            if @instance = Instance.where(id: @id).first
                @voucher_id = @instance.voucher_id
                @voucher = Voucher.where(id: @voucher_id).first
                render '_valid'
            else
                render '_not_valid'
            end
        end
    end

	def show
        @instance = Instance.find(params[:id])
	end
	
	def edit
        @instance = Instance.find(params[:id])

        if @instance.update(post_params)
            redirect_to @instance
        else
            render 'edit'
        end
    end

end