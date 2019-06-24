class Admin::ShopsController < ApplicationController
    
    before_action :authenticate_user!

    before_action :admin_check

    def index
        @shops = Shop.all
    end

    def new
        @shop = Shop.new
    end


    def create
        @shop = Shop.new(shop_params)

        if @shop.save
            redirect_to [:admin, @shop]
        else
            render 'new'
        end
    end

    def show
        @shop = Shop.find(params[:id])
    end

    def update
        @shop = Shop.find(params[:id])

        if @shop.update(shop_params)
            redirect_to [:admin, @shop]
        else
            render 'edit'
        end
    end

    def edit
        @shop = Shop.find(params[:id])
    end

    def destroy
        @shop = Shop.find(params[:id])
        @users = User.find_by_shop_id(@shop.id)
        if @users
            raise "shops with existing members of staff can't be deleted, please remove vendor priviledges before deleting this store"
        else
            @shop.destroy
            redirect_to admin_shops_path
        end
    end

    private

    def shop_params
        params.require(:shop).permit(:name, :location, :contact_phone, :contact_email)
    end

    private  
    def admin_check
        if current_user.is_admin? != true
            redirect_to root_path     
        end
    end

end