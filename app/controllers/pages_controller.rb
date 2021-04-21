class PagesController < ApplicationController
  def home
    @newest_books = Book.where(sold: false).last(4)
  end
  def about
  end
end
