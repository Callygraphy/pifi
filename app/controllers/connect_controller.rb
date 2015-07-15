class ConnectController < ApplicationController
  
  def index
    @name = Name.where(user_id: current_user.id).last
    @ball = Ball.where(user_id: current_user.id).last 
    @dream = Dream.where(user_id: current_user.id).last
    @tweet = Tweet.where(user_id: current_user.id).last
    @rating = Rating.where(user_id: current_user.id).last

    if @rating 
      @bird_diff =  @rating.bird - 20
        if @bird_diff > 0
          @bird_diff = "+" + @bird_diff.to_s
        end
      
      @dream_diff =  @rating.dream - 10
        if @dream_diff > 0
          @dream_diff = "+" + @dream_diff.to_s
        end
        @ball_diff = @rating.ball - 5
        if @ball_diff > 0
          @ball_diff = "+" + @ball_diff.to_s
        end
        @tweet_diff = @rating.tweet - 10
        if @tweet_diff > 0
          @tweet_diff = "+" + @tweet_diff.to_s
        end
    end

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
