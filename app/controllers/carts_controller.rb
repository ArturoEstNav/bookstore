class CartsController < ApplicationController
  def show
    @cart_items = @cart.cart_items
  end

  def create
    @cart = Cart.new
    @cart.save
  end
end
