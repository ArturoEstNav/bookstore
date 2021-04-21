class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :books, through: :cart_items

  def enough_balance?(customer_balance)
    customer_balance >= self.total ? true : false
  end

  def empty_cart
    self.subtotal = 0
    self.service_fee = 0
    set_total
    self.save
  end

  def set_total
    set_subtotal
    set_service_fee
    self.total = (self.subtotal + self.service_fee).round(2)
  end

  private


  def set_subtotal
    if self.books.empty?
      self.subtotal =  0.00
    else
      self.subtotal = self.books.collect{|book| book.price}.sum.round(3)
    end
  end

  def set_service_fee
    if self.books.empty?
      self.service_fee = 0.00
    else
      self.service_fee = self.books.size
    end
  end
end
