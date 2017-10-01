class Specification < ActiveRecord::Base
  belongs_to :type
  has_many :component_specifications
  has_many :components, :through => :component_specifications
end
