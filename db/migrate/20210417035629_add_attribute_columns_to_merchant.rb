class AddAttributeColumnsToMerchant < ActiveRecord::Migration[6.0]
  def change
    add_column :merchants, :name, :string
    add_column :merchants, :phone, :string
    add_column :merchants, :earnings, :float, default: 0.0
  end
end
