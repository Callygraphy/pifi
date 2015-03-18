class NamesController < ApplicationController

  def new
    @names = Name.all
  end

  def create
    @name = Name.new(name_params)
    @name.user_id = current_user.id
    @name.save
    redirect_to '/'
  end

  private
    def name_params
      params.require(:name).permit(:name)
    end

end
