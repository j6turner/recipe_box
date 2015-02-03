class DeleteIngredients < ActiveRecord::Migration
  def change
    drop_table :ingredients
  end
end
