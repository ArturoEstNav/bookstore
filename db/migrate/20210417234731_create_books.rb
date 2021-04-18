class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.float :price, default: 0.0
      t.boolean :sold, default: false
      t.references :merchant, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end

    change_column_default :carts, :total, 0.0
  end


end
