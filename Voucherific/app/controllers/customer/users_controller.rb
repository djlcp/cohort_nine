class Customer::UsersController < ApplicationController

	before_action :authenticate_user!


  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    #@user = current_user
  end


	def edit
		  @user = User.find(params[:id])
	end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to customer_users_path(current_user)
      else
            render 'edit'
      end
  end 


	private  
	def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
  end

end