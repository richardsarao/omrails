class AdminAuthorization < ActiveAdmin::AuthorizationAdapter

	def authorized?(action, subject = nil)
		user && user.admin
	end
#user is a current user method that Devise provides
#user.admin is a admin method on user
end

#made this file from video 33