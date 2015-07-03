class ConnectController < ApplicationController
  
  def index
  	@ip = request.ip
  	#@mac = system('arp ')
  	arpreturn = %x[arp -a #{@ip}]
  	if arpreturn
  		@mac = arpreturn.match('..:..:..:..:..:..')
  	else
  		@mac = 'Something went wrong'
  	end

  end


end
