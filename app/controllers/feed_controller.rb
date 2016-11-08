#app/controllers/feed_controller.rb
class FeedController < ApplicationController
	before_action :authenticate_user!

	def show
		@tweets = Tweet.where(user: current_user.all_following)  #vid 60 4:30, 
	end
end
