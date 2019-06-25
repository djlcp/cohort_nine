class RegistrationsController < Devise::RegistrationsController

  private
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  private
  def account_update_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :is_admin, :is_vendor, :shop_id)
  	#devise_parameter_sanitizer.permit(:account_update) << :first_name << :last_name << :email << :password << :password_confirmation << :current_password << :is_admin << :is_vendor << :shop_id
  end

end