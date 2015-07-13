class NamesController < ApplicationController

  def new
    @names = Name.all
  end

  def create
    @name = Name.new(name_params)
    @name.user_id = current_user.id
    @name.save
    @user_mins = User.find(current_user.id)
    @user_mins.minutes += 20
    @user_mins.save
    redirect_to
  end

  def show
    @name = Name.find(params[:id])
  end

  def index
    @name = Name.where(user_id: current_user.id).last
  end

  private
    def name_params
      params.require(:name).permit(:name)
    end

end
