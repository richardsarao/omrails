

class TweetsController < ApplicationController

  # GET /tweets   capital Tweet is the tweet model. its a way to get a tweet from the db.  the @tweet is the variable that contrains the result of the function.  the @tweet gets put into the page (ie the view)that is displayed.
  def index
    @tweets = Tweet.all
  end

  # GET /tweets/1
  def show
   @tweet = Tweet.find(params[:id])
   
  end

  # GET /tweets/new
  def new
   # @tweet = Tweet.new  'replaced with Devise below'
   @tweet = current_user.tweets.new #sets a new tweets id to the current user.
  end

  # GET /tweets/1/edit
  def edit
    @tweet = current_user.tweets.find(params[:id])
  end

  # POST /tweets
  def create
    #@tweet = Tweet.new(tweet_params) 'replaced with Devise below'
    @tweet = current_user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to @tweet, notice: 'Tweet was successfully created.'
    else
      render :new 
    end
  end

  # PATCH/PUT /tweets/1
  def update
    @tweet = current_user.tweets.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to @tweet, notice: 'Tweet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tweets/1
  def destroy
    @tweet = current_user.tweets.find(params[:id])
    @tweet.destroy
    redirect_to tweets_url, notice: 'Tweet was successfully destroyed.'
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      params.require(:tweet).permit(:content)
    end
end
