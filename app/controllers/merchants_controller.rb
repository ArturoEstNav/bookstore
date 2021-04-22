class MerchantsController < ApplicationController
  before_action :set_merchant, only: [:show, :update_earnings]

  def show
    @sold_books = Book.where(sold: true, merchant_id: @merchant.id)
  end

  private

  def set_merchant
    @merchant = Merchant.find(params[:id])
  end
end
