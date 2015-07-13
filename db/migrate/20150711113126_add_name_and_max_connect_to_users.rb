class AddNameAndMaxConnectToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :connect
      t.text :name
    end
  end
end
