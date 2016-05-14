class BallsController < ApplicationController

  def new
  #  @count = 0
    @catch = Ball.last
    @count = @catch.count
    @count += 1
      # if @catch.catch == false
      #   @count = 0
      # else
      #   all_the_balls = Ball.all
      #   all_the_balls.each do |ball|
      #     if ball.catch == true
      #       @count += 1
      #     else
      #       @count = 0
      #     end
      #   end

      # end


  end

  def create
    @ball = Ball.new(ball_params)
    # @ball.catch = ball_params[:ball][:catch]
    # @ball.count = ball_params[:ball][:count]
    @ball.user_id = current_user.id
    @ball.save
    @user_mins = User.find(current_user.id)
    @user_mins.minutes += 5
    @user_mins.save
    redirect_to '/balls/'
  end

  def index
    @ball = Ball.where(user_id: current_user.id).last
  end

  def show
    @ball = Ball.find(params[:id])
  end

  private
    def ball_params
      params.require(:ball).permit(:catch, :count)
    end

end
