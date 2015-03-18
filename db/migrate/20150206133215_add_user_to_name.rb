class AddUserToName < ActiveRecord::Migration
  def change
    change_table :names do |t|
      t.belongs_to :user, index: true
    end
  end
end
