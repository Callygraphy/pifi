class ConnectController < ApplicationController
  
  def index
  	@ip = request.ip
  	
  end


end
