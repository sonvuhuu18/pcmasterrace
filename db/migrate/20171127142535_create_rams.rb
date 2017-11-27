class CreateRams < ActiveRecord::Migration
  def change
    create_table :rams do |t|
      t.integer :item_id
      t.string :ram_type
      t.float :memory_size
      t.float :bus
      t.float :tdp
      t.string :images
      t.timestamps null: false
    end
  end
end
