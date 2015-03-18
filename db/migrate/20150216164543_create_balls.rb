class CreateBalls < ActiveRecord::Migration
  def change
    create_table :balls do |t|
      t.boolean :catch
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
