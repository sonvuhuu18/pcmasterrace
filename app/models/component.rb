class Component < ActiveRecord::Base
  belongs_to :type
  belongs_to :category
  belongs_to :manufacturer
  has_many :reviews
  has_many :component_specifications
  has_many :specifications, :through => :component_specifications
end
