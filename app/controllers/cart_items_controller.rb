class CartItemsController < ApplicationController
  before_action :set_cart, only: [:create, :destroy]

  def new
    @cart_item = CartItem.new
  end

  def create
    unless @cart.books.exists?(id: cart_item_params[:book_id])
      @cart_item = CartItem.new(cart_item_params)
      @cart_item.save
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to carts_path
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:cart_id, :book_id)
  end

  def book_id
    params.require(:cart_item).permit(:cart_id, :book_id)
  end
end
