class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :name
      t.date :date
      t.integer :recipe_id

      t.timestamps
    end
  end
end
