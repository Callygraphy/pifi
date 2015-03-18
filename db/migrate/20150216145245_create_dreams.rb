class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.text :text
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
