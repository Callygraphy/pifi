class StreamController < ApplicationController

  def index
    balls = Ball.all
    dreams = Dream.all
    names = Name.all
    tweets = Tweet.all
    ratings = Rating.all
    # @combined = (balls + dreams + names + tweets + ratings).sort_by{ |hash| hash['updated_at'] }.reverse
    @combined = (names + dreams + balls).sort_by{ |hash| hash['updated_at'] }.reverse



  end

end
