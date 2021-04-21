class Cart < ApplicationRecord
  belongs_to :customer

  def add_book(book_price)
    add_to_subtotal(book_price)
    add_to_service_fee(1.0)
    set_total
    self.save
  end

  def remove_book(book_price)
    remove_from_subtotal(book_price)
    remove_from_service_fee(1.0)
    set_total
    self.save
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
