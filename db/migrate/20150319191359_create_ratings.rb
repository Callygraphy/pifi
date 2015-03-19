class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :bird
      t.integer :ball
      t.integer :tweet
      t.integer :dream
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
