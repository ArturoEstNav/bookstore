class Cart < ApplicationRecord
  belongs_to :customer
  has_many :books
end