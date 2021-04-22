class PagesController < ApplicationController
  before_action :set_newest_books

  def home
  end

  def about
  end

  private

  def set_newest_books
    @newest_books = Book.where(sold: false).last(4)
  end
end
