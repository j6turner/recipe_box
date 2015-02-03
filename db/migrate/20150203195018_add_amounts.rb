class AddAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.column(:number, :string)
      t.column(:type, :string)
      t.timestamps
    end
  end
end
