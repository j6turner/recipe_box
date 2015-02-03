class DropInstructionsRecipes < ActiveRecord::Migration
  def change
    drop_table(:instructions_recipes)
  end
end
