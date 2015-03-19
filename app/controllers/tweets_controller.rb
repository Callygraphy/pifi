class TweetsController < ApplicationController

def new
end

def create
  @tweet = Tweet.new(tweet_params)
  @tweet.user_id = current_user.id
  @tweet.save
    @user_mins = User.find(current_user.id)
    @user_mins.minutes += 10
    @user_mins.save
  redirect_to '/'
end

def index
  # @dreams = Dream.all
end

private
  def tweet_params
    params.require(:tweet).permit(:tweet)
  end


end
