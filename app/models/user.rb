class User < ActiveRecord::Base
	has_many :balls
	has_many :tweets
	has_many :names
	has_many :ratings
	has_many :dreams
end
