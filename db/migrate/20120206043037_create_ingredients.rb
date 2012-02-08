class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.decimal :qty
      t.string :unit
      t.string :name

      t.timestamps
    end
  end
end
