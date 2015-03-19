class RatingsController < ApplicationController
def new
end

def create
  @rating = Rating.new(rating_params)
  @rating.user_id = current_user.id
  @rating.save
	@user_mins = User.find(current_user.id)
    @user_mins.minutes += 40
    @user_mins.save
  redirect_to '/connected'
end

def index
  # @ratings = rating.all
end

private
  def rating_params
    params.require(:rating).permit(:tweet, :ball, :dream, :bird)
  end


end
