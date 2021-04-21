class RemoveCustomerIdFromCart < ActiveRecord::Migration[6.0]
  def change
    remove_reference :carts, :customer, foreign_key: true
  end
end
