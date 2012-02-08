class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.string :description
      t.integer :batch_id

      t.timestamps
    end
  end
end
