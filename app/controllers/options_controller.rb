class OptionsController < ApplicationController
  def index
  	unless request.url != 'http://localhost:3000/' || request.url != 'http://192.168.42.1/'
  		redirect_to 'http://192.168.42.1/'
  	end
  end
end
