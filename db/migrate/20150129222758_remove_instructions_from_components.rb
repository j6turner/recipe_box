class RemoveInstructionsFromComponents < ActiveRecord::Migration
  def change
    remove_column(:components, :instructions, :string)
  end
end
