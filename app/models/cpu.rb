class Cpu < ActiveRecord::Base
  belongs_to :item
  mount_uploaders :images, ImageUploader
  serialize :images, JSON
  def name
    self.item.name
  end
end
