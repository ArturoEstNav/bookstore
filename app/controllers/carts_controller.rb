class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    @books = Book.where(cart: @cart)
  end
end
