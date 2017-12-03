class Ram < ActiveRecord::Base
  belongs_to :item
  mount_uploaders :images, ImageUploader
  serialize :images, JSON

  def name
      self.item.name
  end

  def unit key
    case key
    when "memory_size"
      "(GB)"
    when "bus"
      "(MHz)"
    else
      ""
    end
  end
end
