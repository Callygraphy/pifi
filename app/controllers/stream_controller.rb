class StreamController < ApplicationController

  def index
    balls = Ball.all
    dreams = Dream.all
    names = Name.all
    tweets = Tweet.all
    ratings = Rating.all
    pictures = Picture.all

    ball_minutes = Ball.all.length * 5
    dreams_minutes = Dream.all.length * 10
    names_minutes = Name.all.length * 20
    tweet_minutes = Tweet.all.length * 10

    @total_minutes = ball_minutes + dreams_minutes + names_minutes + tweet_minutes
    @user_count = User.all.length



     # @combined2 = (dreams + names + balls + ratings + tweets).sort{ |a,b| a.updated_at <=> b.updated_at}.reverse
     @combined = (names + dreams + balls + tweets + ratings + pictures).sort_by{ |hash| hash['updated_at'] }.reverse
     render layout: 'stream'
  end

  def display
    balls = Ball.last
    dreams = Dream.last
    names = Name.last
    tweets = Tweet.last
    ratings = Rating.last

    ball_minutes = Ball.all.length * 5
    dreams_minutes = Dream.all.length * 10
    names_minutes = Name.all.length * 20
    tweet_minutes = Tweet.all.length * 10

    @total_minutes = ball_minutes + dreams_minutes + names_minutes + tweet_minutes
    @user_count = User.all.length


    @combined = ([names] + [dreams] + [balls] + [tweets] + [ratings]).sort{ |a,b| a.updated_at <=> b.updated_at}.reverse
     render layout: 'stream'
  end

  def test
    msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
    format.json  { render :json => msg }

  end

end
