class Admin::UsersController < ApplicationController

	before_action :authenticate_user!

	before_action :admin_check

  def index
    @users = User.all
        @search = params["search_user"]
        if @search.present?
          @email = @search["email"]
          @users = User.where(email: @email)
        else
          @users = User.all
        end    
  end

  def show
    @user = User.find(params[:id])
  end


	def edit
		  @user = User.find(params[:id])
	end

  def update
    @user = User.find(params[:id])


      if @user.update(user_params)

      if @user.is_vendor == false
        @user.shop_id = nil
        @user.save
      end  
           redirect_to admin_users_path
      else
            render 'edit'
      end
  end 

	private  
	def user_params
      params.require(:user).permit(:first_name, :last_name, :is_admin, :is_vendor, :email, :shop_id)
  end


	private
	def admin_check
  	if current_user.is_admin? != true
          redirect_to root_path     
  	end
	end

end