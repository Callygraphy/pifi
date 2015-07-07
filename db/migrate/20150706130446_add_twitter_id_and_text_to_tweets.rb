class AddTwitterIdAndTextToTweets < ActiveRecord::Migration
  def change
    change_table :tweets do |t|
      t.integer :twitterid
      t.text :text
    end
  end
end
