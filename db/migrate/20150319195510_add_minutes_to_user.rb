class AddMinutesToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :minutes
    end
  end
end
