class AddAmountsIngredientId < ActiveRecord::Migration
  def change
    add_column(:amounts, :ingredient_id, :integer)
  end
end
