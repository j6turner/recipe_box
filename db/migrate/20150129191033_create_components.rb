class CreateComponents < ActiveRecord::Migration
  def change
    create_table(:components) do |t|
      t.column(:ingredients, :string)
      t.column(:instructions, :string)
      t.column(:recipe_id, :integer)

      t.timestamps
    end
  end
end
