class DreamsController < ApplicationController

  def new
  end

  def create
    @dream = Dream.new(dream_params)
    @dream.user_id = current_user.id
    @dream.save
    @user_mins = User.find(current_user.id)
    @user_mins.minutes += 10
    @user_mins.save
    redirect_to '/dreams'
  end

  def index
    @dream = Dream.where(user_id: current_user.id).last
  end

  private
    def dream_params
      params.require(:dream).permit(:text)
    end
end
