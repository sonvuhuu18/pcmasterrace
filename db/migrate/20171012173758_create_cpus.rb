class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|
      t.integer :item_id
      t.integer :manufacturer_id
      t.integer :clock_speed
      t.integer :turbo_clock_speed
      t.string :cores
      t.string :is_unlocked
      t.string :architechture
      t.integer :threads
      t.integer :l2_cache
      t.integer :l3_cache
      t.integer :manufacturer_process
      t.string :gpu_label
      t.integer :tdp
      t.timestamps null: false
    end
  end
end
