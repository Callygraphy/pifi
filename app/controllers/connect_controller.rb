class ConnectController < ApplicationController
  
  def index
  	@ip = request.ip
  	arpreturn = %x[arp -a #{@ip}]
  	if arpreturn
  		@mac = arpreturn.match('..:..:..:..:..:..')
  	else
  		@mac = 'Something went wrong'
  	end
  end


  def create
  	@ip = request.ip
  	arpreturn = %x[arp -a #{@ip}]
    if arpreturn
  		@mac = arpreturn.match('..:..:..:..:..:..')
  		@connect = %x[sudo iptables -I internet 1 -t mangle -m mac --mac-source #{@mac} -j RETURN ] 
  	else
  		redirect '/info'
  	end  	
  
  end

  def show

  end
  


end
