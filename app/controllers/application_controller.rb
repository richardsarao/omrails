#/app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #added per vid 33 to tell the app what to do if someone isn't authorized to access the admin dashboard
  	def access_denied(exception)
  		redirect_to root_path, alert: exception.message
	  end

  protected #vid 56 levels of access other files have to use this fn

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
    end
end
