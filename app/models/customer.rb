class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart

  validates :address, :name, presence: true
  validates :email, uniqueness: true

  after_create :redeem_signup_incentive

  def redeem_signup_incentive
    add_to_balance(50)
  end

  private

  def add_to_balance(amount)
    self.balance += amount
    self.save
  end
end
