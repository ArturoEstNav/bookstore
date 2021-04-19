class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    if @customer.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address)
  end
end
