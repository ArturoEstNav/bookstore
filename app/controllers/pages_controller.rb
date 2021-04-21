class PagesController < ApplicationController
  def home
    @newest_books = Book.all.last(4)
  end
  def about
  end
end
