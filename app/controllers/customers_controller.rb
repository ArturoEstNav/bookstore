class CustomersController < ApplicationController
  def show
    @customer = current_customer
    @balance = current_customer.balance
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  # def customer_params
  #   params.require(:user).permit(:first_name, :last_name, :gender,
  #                                :residence_country, :postal_code, :photo)
  # end
end
