class PicturesController < ApplicationController
  def new
    @picture = Picture.new
    # render layout: 'application'
  end

  def create
    @picture = Picture.new
    @picture.avatar_data_uri = params[:picture][:blob]
    @picture.user_id = current_user.id
    @picture.save

    @user_mins = User.find(current_user.id)
    @user_mins.minutes += 20
    @user_mins.save
    redirect_to '/pictures'
  end

  def show
    @picture = Picture.last
  end

  def index
    @pictures = Picture.last
  end

  private
    def picture_params
      params.require(:pictures).permit(:avatar)
    end

end
