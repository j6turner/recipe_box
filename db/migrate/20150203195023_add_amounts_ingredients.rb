class AddAmountsIngredients < ActiveRecord::Migration
  def change
    create_table :amounts_ingredients do |t|
      t.column(:ingredient_id, :integer)
      t.column(:amount_id, :integer)
      t.timestamps
    end
  end
end
