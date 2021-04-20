class AddServiceFeeAndSubtotalToCart < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :service_fee, :float, default: 0.0
    add_column :carts, :subtotal, :float, default: 0.0
  end
end
