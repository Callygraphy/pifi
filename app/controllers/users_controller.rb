class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new()
    # @user.save
    # session[:user_id] = @user.id
    # redirect_to '/'

  if @user.save
    session[:user_id] = @user.id
    redirect_to root_url
  else
    render "new"
  end

end

end
