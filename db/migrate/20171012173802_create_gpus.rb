class CreateGpus < ActiveRecord::Migration
  def change
    create_table :gpus do |t|
      t.integer :item_id
      t.integer :manufacturer_id
      t.string :gpu_brand
      t.string :gpu_name
      t.float :clock_speed
      t.float :turbo_clock_speed
      t.integer :is_dual_gpu
      t.float :memory_clock_speed
      t.float :effective_memory_clock_speed
      t.float :memory_bus
      t.float :memory
      t.string :memory_type
      t.float :memory_bandwidth
      t.float :tdp
      t.float :shading_units
      t.float :texture_mapping_units
      t.float :render_output_precessors
      t.float :pixel_rate
      t.float :texture_rate
      t.float :floating_point_performance
      t.timestamps null: false
    end
  end
end
