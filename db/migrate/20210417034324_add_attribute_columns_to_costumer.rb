class AddAttributeColumnsToCostumer < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :name, :string
    add_column :customers, :address, :string
    add_column :customers, :balance, :float, default: 0.0
  end
end
