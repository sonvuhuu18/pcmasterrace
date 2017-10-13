class CreateGpus < ActiveRecord::Migration
  def change
    create_table :gpus do |t|
      t.integer :item_id
      t.integer :manufacturer_id
      t.string :gpu_brand
      t.string :gpu_name
      t.integer :clock_speed
      t.integer :turbo_clock_speed
      t.integer :is_dual_gpu
      t.integer :memory_clock_speed
      t.integer :effective_memory_clock_speed
      t.integer :memory_bus
      t.integer :memory
      t.string :memory_type
      t.integer :memory_bandwidth
      t.integer :tdp
      t.integer :shading_units
      t.integer :texture_mapping_units
      t.integer :render_output_precessors
      t.integer :pixel_rate
      t.integer :texture_rate
      t.integer :floating_point_performance
      t.timestamps null: false
    end
  end
end
