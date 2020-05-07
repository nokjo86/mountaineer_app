class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.references :users_location, null: false, foreign_key: true
      t.references :gear, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
