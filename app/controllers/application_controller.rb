class ApplicationController < ActionController::Base
	before_action :cofigure_permitted_parameters,if: :devise_controller?
	private
	def configure_permitted_parameters
		devise_parmeter_sanitizer.permit(:sign_up,keys: [:username])
	end
end
