#app/controllers/votes_controller.rb
class VotesController < ApplicationController
    before_action :authenticate_user! #because we are using current_user below

  def create
  	   item = Item.find(params[:id])
       item.liked_by current_user
       redirect_to items_path, notice: "You successfully voted for an item"
  end
  def destroy
  	   item = Item.find(params[:id])
       item.unliked_by current_user
       redirect_to items_path, notice: "You successfully removed your vote from an item"
  end
end
