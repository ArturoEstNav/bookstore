class Merchant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy

  validates :phone, :name, presence: true
  validates :email, uniqueness: true

  def update_earnings(amount)
    self.earnings += amount
    self.save
  end
end
