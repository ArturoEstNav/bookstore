class CartsController < ApplicationController
  before_action :set_variables

  def show
    @cart_items = @cart.cart_items
  end

  def create
    @cart = Cart.new
    @cart.save
  end

  private

  def set_variables
    @cart.set_total
  end
end
