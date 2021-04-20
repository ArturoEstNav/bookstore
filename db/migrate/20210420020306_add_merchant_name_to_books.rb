class AddMerchantNameToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :merchant_name, :string
  end
end
