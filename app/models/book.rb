class Book < ApplicationRecord
  belongs_to :merchant
  belongs_to :cart
end
