class AddInstructionsRecipes < ActiveRecord::Migration
  def change
    create_table :instructions_recipes do |t|
      t.column(:instruction_id, :integer)
      t.column(:recipe_id, :integer)
      t.timestamps
    end
  end
end
