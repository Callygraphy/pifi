class ConnectController < ApplicationController
  
  def index
  	@ip = request.ip
  	#@mac = system('arp ')
  	arp = %x[arp -a #{@ip}]
  	@mac = arp.match('/..:..:..:..:..:../')[0]

  end


end
