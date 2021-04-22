class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :request_store_credit]
  before_action :set_newest_books
  def show
  end

  def edit
  end

  def update
    @customer.update(customer_params)
    if @customer.save
      redirect_to customer_path(@customer)
    else
      render :edit
    end
  end

  def request_store_credit
    @customer.request_credit
    redirect_to customer_path(@customer)
  end

  private

  def set_customer
    @customer = Customer.find(current_customer.id)
  end

  def set_newest_books
    @newest_books = Book.where(sold: false).last(4)
  end

  def customer_params
    params.require(:customer).permit(:name, :address)
  end
end
