class Component < ActiveRecord::Base
  belongs_to :type
  has_many :component_specifications
  has_many :specification, :through => :component_specifications
end
