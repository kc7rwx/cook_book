class Batch < ActiveRecord::Base
  belongs_to :recipe
  has_many :ingredients, :dependent => :destroy
  has_many :instructions, :dependent => :destroy
  
  def clone

    def copy_record(record)
      new_record = record.dup
      new_record.batch_id = @new.id
      new_record.save
    end
    
    @new = self.dup
    @new.name = self.name + "clone"
    @new.date = Date.current
    @new.save
    
    self.ingredients.each do |ingredient|
      copy_record(ingredient)
    end
    
    self.instructions.each do |instruction|
      copy_record(instruction)
    end  
  end
  
  
end
