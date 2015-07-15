# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: 'Young William', minutes: 45, connect: false)
user2 = User.create(name: 'Floral Cambridge', minutes: 10, connect: false) 
user3 = User.create(name: 'Icy Bona', minutes: 45, connect: true) 
user4 = User.create(name: 'Weathered Risby', minutes: 45, connect: true)
user5 = User.create(name: 'Proud Willow', minutes: 45, connect: true) 
user6 = User.create(name: 'Shy Kells', minutes: 45, connect: true)

Name.create(name: 'Sean', user_id: user1.id)
Name.create(name: 'aygfinajv', user_id: user3.id)
Name.create(name: 'Hoops McCain', user_id: user4.id)
Name.create(name: 'Erwin Wurm', user_id: user5.id)

Ball.create(catch: true, count: 0, user_id: user1.id)
Ball.create(catch: false, count: 1, user_id: user3.id)
Ball.create(catch: true, count: 0, user_id: user4.id)
Ball.create(catch: false, count: 1, user_id: user5.id)
Ball.create(catch: true, count: 10, user_id: user6.id)

Tweet.create(tweet: true, text: "I don't know what to say", user_id: user1.id)
Tweet.create(tweet: true, text: 'rtdyfguhjl', user_id: user2.id)
Tweet.create(tweet: true, text: 'hello world! Nice to meet you.', user_id: user4.id)
Tweet.create(tweet: true, text: 'Everything is connected in Life. The point is to know it and understand it.', user_id: user5.id)
Tweet.create(tweet: true, text: 'Hello Everybody!!! :)', user_id: user6.id)

Dream.create(text: 'I dont remember my dream', user_id: user1.id)
Dream.create(text: 'I dreamt all my worries came true', user_id: user2.id)
Dream.create(text: 'dixcfyugyhui;j', user_id: user3.id)
Dream.create(text: 'I was a hero in a zombie movie', user_id: user4.id)
Dream.create(text: 'aS . (K wEC', user_id: user5.id)

Rating.create(bird: 15, ball: 15, tweet: 15, dream: 15, user_id: user5.id)
Rating.create(bird: 30, ball: 2, tweet: 20, dream: 5, user_id: user4.id)
Rating.create(bird: 0, ball: 0, tweet: 0, dream: 0,user_id: user3.id)