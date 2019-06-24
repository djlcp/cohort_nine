class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	private
	def configure_permitted_parameters
    	update_attrs = [:password, :password_confirmation, :current_password]
    	devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  	end

	def after_sign_in_path_for(resource)
		root_path
	end


end
