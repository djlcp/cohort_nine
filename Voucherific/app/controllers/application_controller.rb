class ApplicationController < ActionController::Base
	skip_before_action :verify_authenticity_token
	before_action :configure_permitted_parameters, if: :devise_controller?
