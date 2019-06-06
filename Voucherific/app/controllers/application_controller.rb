class ApplicationController < ActionController::Base

	before_action :authenticate_user!

	private
	def after_sign_in_path_for(resource)
		if current_user.is_admin?
			admin_path
		elsif current_user.is_vendor?
			shop_path
		end
	end
end
