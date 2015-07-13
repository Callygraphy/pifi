class TweetsController < ApplicationController

def new
end

def create
  @tweet = Tweet.new(tweet_params)
  @status = params[:tweet][:text]
  update = $twitter.update(@status)
  @tweet.twitterid = update.id
  @tweet.user_id = current_user.id
  @tweet.save
    @user_mins = User.find(current_user.id)
    @user_mins.minutes += 10
    @user_mins.save


  redirect_to '/tweets'
end

def index
    @tweet = Tweet.where(user_id: current_user.id).last
end

private
  def tweet_params
    params.require(:tweet).permit(:tweet, :text)
  end


end
