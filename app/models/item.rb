class Item < ActiveRecord::Base
  mount_uploaders :images, ImageUploader
  serialize :images, JSON
  has_one :cpu
  has_one :gpu
  has_one :hard_drive
  belongs_to :category
  belongs_to :manufacturer
  has_many :reviews
end
