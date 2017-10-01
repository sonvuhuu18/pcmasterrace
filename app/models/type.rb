class Type < ActiveRecord::Base
  has_many :components
  has_many :specifications
end
