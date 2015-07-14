class OptionsController < ApplicationController
  def index
  	if request.url != 'http://192.168.42.1/' || request.url != 'http://localhost:3000/'
  		redirect_to 'http://192.168.42.1/'
  	end
  end
end
