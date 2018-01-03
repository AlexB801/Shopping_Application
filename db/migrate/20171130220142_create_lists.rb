class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :items
      t.integer :quantity
      t.belongs_to :lists, foreign_key: true

      t.timestamps
    end
  end
end
