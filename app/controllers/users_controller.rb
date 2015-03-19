class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new()
    @user.minutes = 0
    # @user.save
    # session[:user_id] = @user.id
    # redirect_to '/'

  # respond_to do |format|
  #   if @user.save
  #     session[:user_id] = @user.id
  #     format.html { redirect_to root_url }
  #     format.json { render json: @user, status: :created, location: @user }
  #   else
  #     format.html { render action: "new" }
  #     format.json { render json: @user.errors, status: :unprocessable_entity }
  #   end
  # end

  if @user.save
    session[:user_id] = @user.id
    redirect_to root_url
  else
    render "new"
  end

end

end
