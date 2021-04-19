class UpdateCartForeignKeyToNullable < ActiveRecord::Migration[6.0]
  def change
    change_column :books, :cart_id, :bigint, null: true
  end
end
