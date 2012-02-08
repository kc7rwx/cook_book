class AddBatchIdToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :batch_id, :integer

  end
end
