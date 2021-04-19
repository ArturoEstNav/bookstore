class Book < ApplicationRecord
  # includePgSearch

  belongs_to :merchant
  belongs_to :cart, optional: true

  validates :title, :description, :author, :price, presence: true

  # pg_search_scope :global_search, against: [:title]
  # ,order_within_rank: "blog_posts.updated_at DESC"
  # scope :sorted, ->{ order(last_name: :asc) }
end
