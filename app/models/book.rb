class Book < ApplicationRecord
  include PgSearch

  belongs_to :merchant
  belongs_to :cart, optional: true

  validates :title, :description, :author, :price, presence: true

  pg_search_scope :search, against: [:title]

  def add_to_cart(cart)
    self.cart = cart
    self.save
  end

  def remove_from_cart
    self.cart_id = nil
    self.save
  end

  def sell_book
    self.sold = true
    self.save
  end
end
