class AddInstructionsTable < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.column(:description, :string)
      t.timestamps
    end
  end
end
