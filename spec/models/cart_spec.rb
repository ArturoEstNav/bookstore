# require 'rails_helper'

# RSpec.describe Cart, type: :model do

#   let(:customer) {
#     Customer.new(
#       email: "arturo@telos.com",
#       name: "Arturo",
#       password: "Loremipsum",
#       phone: "555-683-5688"
#     )
#   }

#   subject {
#     described_class.new(
#       customer_id: 1,
#       created_at: DateTime.now
#     )
#   }

#   it "is valid with valid attributes" do
#     expect(subject).to be_valid
#   end

#   it "is not valid without a customer reference" do
#     subject.customer_id = nil
#     expect(subject).to_not be_valid
#   end

#   describe "Associations" do
#     it { should belong_to(:customer) }
#     it { should have_many(:books) }
#   end
# end
