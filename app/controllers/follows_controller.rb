#app/controllers/follows_controller.rb
class FollowsController < ApplicationController
    before_action :authenticate_user! #forces user to log in first before following/un-folowing #updated per vid 60

  def create
  	  user = User.find_by(username: params[:username])
  	  Follow.create(followable: user, follower: current_user)
  	  redirect_to user_path(user.username), notice: "Sucessfully followed user"
  end
  def destroy
  	  user = User.find_by(username: params[:username])
  	  Follow.find_by(followable: user, follower: current_user).destroy
  	  redirect_to user_path(user.username), notice: "Sucessfully un-followed user"
  end
end
