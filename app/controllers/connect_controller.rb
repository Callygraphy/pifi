class ConnectController < ApplicationController

  def index
    @name = Name.where(user_id: current_user.id).last
    @ball = Ball.where(user_id: current_user.id).last
    @dream = Dream.where(user_id: current_user.id).last
    @power = Picture.where(user_id: current_user.id).last

    # @tweet = Tweet.where(user_id: current_user.id).last
    # @rating = Rating.where(user_id: current_user.id).last


  end


  def connect
  	@ip = request.ip
    arpreturn = %x[arp -a #{@ip}]
   if arpreturn
      @mac = arpreturn.match('..:..:..:..:..:..')
      if current_user.minutes > 0
        if current_user.connect == true
          #establish permanent connection
          @connect = %x[sudo iptables -I internet 1 -t mangle -m mac --mac-source #{@mac} -j RETURN ]
          redirect_to '/connected'
        else
          #establish timed connection
          @connect = %x[sudo iptables -I internet 1 -t mangle -m mac --mac-source #{@mac} -j RETURN ]
          #@timeout = %x[echo 'sudo iptables -D internet -t mangle -m mac --mac-source #{@mac} -j RETURN' | at now + #{current_user.minutes} mins]
          redirect_to '/connected'
        end
      else
        redirect_to '/'
      end

    end
  end

  def show

  end



end

#  		@connect = %x[sudo iptables -I internet 1 -t mangle -m mac --mac-source 70:56:81:93:ed:dd -j RETURN ]
