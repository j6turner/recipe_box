class ReplaceAmountTypeWithAmountMeasurement < ActiveRecord::Migration
  def change
    remove_column(:amounts, :type, :string)
    add_column(:amounts, :measurement, :string)
  end
end
