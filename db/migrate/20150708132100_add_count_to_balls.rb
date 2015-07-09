class AddCountToBalls < ActiveRecord::Migration
  def change
    change_table :balls do |t|
      t.integer :count
    end
  end
end
