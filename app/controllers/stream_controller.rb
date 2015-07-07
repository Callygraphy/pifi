class StreamController < ApplicationController

  def index
    balls = Ball.all
    dreams = Dream.all
    names = Name.all
    @tweets = Tweet.all
    ratings = Rating.all
    @tweets_stats = Array.new


    @tweets.each do |t|
      if t.twitterid
        status = $twitter.status(t.twitterid)
        @tweets_stats.push({text: t.text, updated_at: t.updated_at, user_id: t.user_id, favourites: status.favorites_count,followers: status.user.followers_count})
        # @tweet_stats.push({, :favourites => status.favorites_count})
      end
    end

    # @combined = (balls + dreams + names + tweets + ratings).sort_by{ |hash| hash['updated_at'] }.reverse
    @combined = (names + dreams + balls + @tweets_stats).sort_by{ |hash| hash['updated_at'] }.reverse



  end

end
