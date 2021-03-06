class Book < ApplicationRecord
  include PgSearch

  belongs_to :merchant
  has_many :cart_items

  validates :title, :description, :author, :price, presence: true
  pg_search_scope :search, against: [:title]

  def sell_book
    self.sold = true
    self.save
  end
end
