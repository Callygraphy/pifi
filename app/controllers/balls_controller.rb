class BallsController < ApplicationController

  def new
    @count = 0
    @catch = Ball.last
      if @catch.catch == false
        @count = 0
      else
        all_the_balls = Ball.all
        all_the_balls.each do |ball|
          if ball.catch == true
            @count += 1
          else
            @count = 0
          end
        end

      end


  end

  def create
    @ball = Ball.new(ball_params)
    @ball.user_id = current_user.id
    @ball.save
    @user_mins = User.find(current_user.id)
    @user_mins.minutes += 5
    @user_mins.save
    redirect_to '/'
  end

  def index
    # @dreams = Dream.all
  end

  private
    def ball_params
      params.require(:ball).permit(:catch, :count)
    end

end
