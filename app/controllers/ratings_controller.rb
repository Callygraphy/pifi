class RatingsController < ApplicationController
def new
end

def create
  @rating = Rating.new(rating_params)
  @rating.user_id = current_user.id
  @rating.save
	@user_mins = User.find(current_user.id)
    @user_mins.connect = true
    @user_mins.save
  redirect_to '/ratings/'
end

def index
  @rating = Rating.where(user_id: current_user.id).last
  @bird_diff =  @rating.bird - 20
  if @bird_diff > 0
    @bird_diff = "+" + @bird_diff.to_s
  end
  @dream_diff =  @rating.dream - 10
  if @dream_diff > 0
    @dream_diff = "+" + @dream_diff.to_s
  end
  @ball_diff = @rating.ball - 5
  if @ball_diff > 0
    @ball_diff = "+" + @ball_diff.to_s
  end
  @tweet_diff = @rating.tweet - 10
  if @tweet_diff > 0
    @tweet_diff = "+" + @tweet_diff.to_s
  end
end

private
  def rating_params
    params.require(:rating).permit(:tweet, :ball, :dream, :bird)
  end


end
