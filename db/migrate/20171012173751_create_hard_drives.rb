class CreateHardDrives < ActiveRecord::Migration
  def change
    create_table :hard_drives do |t|
      t.integer :item_id
      t.integer :manufacturer_id
      t.integer :capacity
      t.integer :cache
      t.string :interface
      t.integer :interface_speed
      t.string :controller
      t.string :memory_type
      t.integer :process_size
      t.integer :max_shock_force
      t.timestamps null: false
    end
  end
end
