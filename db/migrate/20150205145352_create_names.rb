class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
