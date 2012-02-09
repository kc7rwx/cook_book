class Batch < ActiveRecord::Base
  belongs_to :recipe
  has_many :ingredients, :dependent => :destroy
  has_many :instructions, :dependent => :destroy
  
  def clone

    def copy_record(record)
      new_record = record.dup
      new_record.batch_id = @new_batch.id
      new_record.save
    end
    
    @new_batch = self.dup
    @new_batch.name = self.name + " Clone"
    @new_batch.date = Date.current
    @new_batch.save
    
    self.ingredients.each do |ingredient|
      copy_record(ingredient)
    end
    
    self.instructions.each do |instruction|
      copy_record(instruction)
    end
    
    return @new_batch
  end
  
  
end
