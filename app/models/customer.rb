class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :address, :name, presence: true
  validates :email, uniqueness: true

  after_create :redeem_signup_incentive

  def redeem_signup_incentive
    add_to_balance(50)
  end

  def request_credit
    add_to_balance(100)
  end

  def remove_from_balance(amount)
    self.balance -= amount
    self.save
  end

  private

  def add_to_balance(amount)
    self.balance += amount
    self.save
  end
end
