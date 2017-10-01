class ComponentSpecification < ActiveRecord::Base
  belongs_to :component
  belongs_to :specification
end
