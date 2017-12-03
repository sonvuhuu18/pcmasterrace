class Gpu < ActiveRecord::Base
  belongs_to :item
  mount_uploaders :images, ImageUploader
  serialize :images, JSON

  def name
    self.item.name
  end

  def unit key
    case key
    when "clock_speed", "turbo_clock_speed", "memory_clock_speed", "effective_memory_clock_speed"
      "(MHz)"
    when "memory_bus"
      "(bit)"
    when "memory"
      "(MB)"
    when "memory_bandwidth"
      "(GB/s)"
    when "pixel_rate", "texture_rate"
      "(GPixel/s)"
    when "floating_point_performance"
      "(GFLOPS)"
    when "tdp"
      "(W)"
    else
      ""
    end
  end
end
