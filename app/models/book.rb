class Book < ApplicationRecord
  include PgSearch

  belongs_to :merchant
  belongs_to :cart, optional: true

  validates :title, :description, :author, :price, presence: true

  # scope :sorted, ->{ order(title: :asc) }

  # pg_search_scope :global_search, against: [:title]

  pg_search_scope :search, against: [:title]
end
