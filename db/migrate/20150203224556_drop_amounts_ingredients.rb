class DropAmountsIngredients < ActiveRecord::Migration
  def change
    drop_table(:amounts_ingredients)
  end
end
