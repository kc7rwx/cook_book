class Recipe < ActiveRecord::Base
  has_many :batches
  
  accepts_nested_attributes_for :batches, :allow_destroy => true
end
