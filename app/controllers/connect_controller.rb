class ConnectController < ApplicationController
  
  def index
  	@ip = request.ip
  	@mac = system('arp #{@ip}')
  end


end
