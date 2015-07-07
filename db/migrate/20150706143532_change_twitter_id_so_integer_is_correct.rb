class ChangeTwitterIdSoIntegerIsCorrect < ActiveRecord::Migration
  def change
    change_column :tweets, :twitterid, :integer, :limit => 8
  end
end
