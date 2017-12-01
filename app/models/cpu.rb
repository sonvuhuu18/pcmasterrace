class Cpu < ActiveRecord::Base
  belongs_to :item
  mount_uploaders :images, ImageUploader
  serialize :images, JSON

  def name
    self.item.name
  end

  def unit key
    case key
    when "clock_speed", "turbo_clock_speed"
      "(MHz)"
    when "l2_cache", "l3_cache"
      "(MB)"
    when "manufacturer_process"
      "(nm)"
    when "tdp"
      "(W)"
    else
      ""
    end
  end
end
