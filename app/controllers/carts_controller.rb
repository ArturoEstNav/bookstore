class CartsController < ApplicationController
  before_action :set_variables

  def show
    @cart_items = @cart.cart_items
  end

  def create
    @cart = Cart.new
    @cart.save
  end

  def update
    @customer = current_customer
    if @cart.enough_balance?(@customer.balance)
      @customer.remove_from_balance(@cart.total)
      @cart.books.each{|book| book.sell_book}
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
end
