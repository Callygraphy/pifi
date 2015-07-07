class ChangeTwitterIdTo8bit < ActiveRecord::Migration
  def change
    change_column :tweets, :twitterid, :interger, :limit => 8
  end
end
