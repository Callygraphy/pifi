class ConnectController < ApplicationController
  
  def index
  	@ip = request.ip
  	arpreturn = %x[arp -a #{@ip}]
  	@uri = request.url
  	if arpreturn
  		@mac = arpreturn.match('..:..:..:..:..:..')
  	else
  		@mac = 'Something went wrong'
  	end
  end


  def connect
  	@ip = request.ip
  	arpreturn = %x[arp -a #{@ip}]
    if arpreturn
  		@mac = arpreturn.match('..:..:..:..:..:..')
  		@connect = %x[sudo iptables -I internet 1 -t mangle -m mac --mac-source #{@mac} -j RETURN ] 
       #@connect = %x[echo 'boom'] 
  		if @connect 
        redirect_to '/'
      else
        redirect_to '/info'
      end
    else
      redirect_to '/no-thanks'

  	end  	

  end

  def show

  end



end

#  		@connect = %x[sudo iptables -I internet 1 -t mangle -m mac --mac-source 70:56:81:93:ed:dd -j RETURN ] 
