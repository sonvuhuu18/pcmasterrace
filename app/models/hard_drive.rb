class HardDrive < ActiveRecord::Base
  belongs_to :item
  mount_uploaders :images, ImageUploader
  serialize :images, JSON

  def name
    self.item.name
  end

  def unit key
    case key
    when "capacity"
      "(GB)"
    when "cache"
      "(MB)"
    when "interface_sped"
      "(Gbit/s)"
    when "process_size"
      "(nm)"
    when "max_shock_force"
      "(G)"
    else
      ""
    end
  end
end
