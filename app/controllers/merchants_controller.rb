class MerchantsController < ApplicationController
  before_action :set_merchant, only: [:show, :edit, :update_earnings]

  def show
    @sold_books = Book.where(sold: true, merchant_id: @merchant.id)
  end

  def edit
  end

  private

  def set_merchant
    @merchant = Merchant.find(current_merchant.id)
  end
end
