class CreateHardDrives < ActiveRecord::Migration
  def change
    create_table :hard_drives do |t|
      t.integer :item_id
      t.integer :manufacturer_id
      t.float :capacity
      t.float :cache
      t.string :interface
      t.float :interface_speed
      t.string :controller
      t.string :memory_type
      t.float :process_size
      t.float :max_shock_force
      t.timestamps null: false
    end
  end
end
