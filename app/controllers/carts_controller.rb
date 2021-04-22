class CartsController < ApplicationController
  before_action :set_variables, :set_newest_books

  def show
    @cart_items = @cart.cart_items
  end

  def create
    @cart = Cart.new
    @cart.save
  end

  def update
    @customer = current_customer
    if @cart.total == 0
      redirect_to books_index_path
    elsif @cart.enough_balance?(@customer.balance)
      @customer.remove_from_balance(@cart.total)
      @cart.books.each do |book|
        Merchant.find(book.merchant_id).update_earnings(book.price)
        book.sell_book
      end
      @cart.books.destroy_all
      redirect_to books_index_path
    else
      redirect_to root_path
    end
  end

  private

  def set_variables
    @cart.set_total
  end

  def set_newest_books
    @newest_books = Book.where(sold: false).last(4)
  end
end
