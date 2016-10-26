class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #added per vid 33 to tell the app what to do is someone isn't authorized to access the admin dashboard
  	def access_denied(exception)
  		redirect_to root_path, alert: exception.message
	end
end
