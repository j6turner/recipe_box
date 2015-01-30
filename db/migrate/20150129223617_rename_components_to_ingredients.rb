class RenameComponentsToIngredients < ActiveRecord::Migration
  def change
    rename_table(:components, :ingredients)
  end
end
