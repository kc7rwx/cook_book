class Recipe < ActiveRecord::Base
  has_many :batches, :dependent => :destroy
  
end
