class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @customer.update(customer_params)
    if @customer.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :address)
  end
end
