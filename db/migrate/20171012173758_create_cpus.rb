class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|
      t.integer :item_id
      t.integer :manufacturer_id
      t.float :clock_speed
      t.float :turbo_clock_speed
      t.string :cores
      t.string :is_unlocked
      t.string :architechture
      t.integer :threads
      t.float :l2_cache
      t.float :l3_cache
      t.integer :manufacturer_process
      t.string :gpu_label
      t.float :tdp
      t.timestamps null: false
    end
  end
end
