class Item < ActiveRecord::Base
  mount_uploaders :images, ImageUploader
   serialize :images, JSON
  has_one :cpu
  has_one :gpu
  has_one :hard_drive
  belongs_to :category
  belongs_to :manufacturer
  has_many :reviews
  has_many :item_specifications
  has_many :specifications, :through => :item_specifications
end
