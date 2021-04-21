class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :books, through: :cart_items

  def add_book(book_params)
    current_item = cart_items.find_by(book_id: book_params[:book][:book_id])
    if current_item
      current_item.quantity += book_params[:book][:quantity].to_i
    current_item.save
    else
    new_item = cart_items.create(book_id: book_params[:book][:book_id],
      quantity: book_params[:book][:quantity],
      cart_id: self.id)
    end
    new_item
  end

  def enough_balance?(customer_balance)
    customer_balance >= self.total ? true : false
  end

  def empty_cart
    self.subtotal = 0
    self.service_fee = 0
    set_total
    self.save
  end

  private

  def set_total
    self.total = (self.subtotal + self.service_fee).round(2)
  end

  def add_to_subtotal(amount)
    self.subtotal += amount
    self.subtotal = self.subtotal.round(2)
  end

  def remove_from_subtotal(amount)
    self.subtotal -= amount
    self.subtotal = self.subtotal.round(2)
  end

  def add_to_service_fee(amount)
    self.service_fee += amount
    self.service_fee = self.service_fee.round(2)
  end

  def remove_from_service_fee(amount)
    self.service_fee -= amount
    self.service_fee = self.service_fee.round(2)
  end
end
