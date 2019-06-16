class Admin::UsersController < ApplicationController

	before_action :authenticate_user!

	before_action :admin_check

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


	def edit
		  @user = User.find(params[:id])
	end

	private  
	def user_params
      params.require(:user).permit(:first_name, :last_name, :is_admin, :is_vendor, :email)
  end


	private
	def admin_check
  	if current_user.is_admin? != true
          redirect_to root_path     
  	end
	end

end