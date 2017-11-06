class Manufacturer < ActiveRecord::Base
  has_many :items
  scope :side_bar_items, ->() do
    joins(:items).group(:id).order('COUNT(items.id) DESC').limit(5)
  end
end
