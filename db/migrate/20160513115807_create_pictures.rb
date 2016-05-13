class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :avatar
      
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
