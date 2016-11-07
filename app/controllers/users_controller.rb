#app/controllers/users_controller.rb
class UsersController < ApplicationController
  def show
  	  @user = User.find_by(username: params[:username])
  	  @tweets = @user.tweets  #per vid 57 8:50
  end
end
