# require 'rails_helper'

# RSpec.describe Cart, type: :model do
#   customer = Customer.new(
#       email: 'arturo@telos.com',
#       name: 'Arturo',
#       password: 'Loremipsum',
#       phone: '555-683-5688'
#   )
#   customer.save

#   subject do
#     described_class.new(
#       customer: customer,
#       created_at: DateTime.now
#     )
#   end

#   it 'is valid with valid attributes' do
#     expect(subject).to be_valid
#   end

#   it 'is not valid without a customer reference' do
#     subject.customer_id = nil
#     expect(subject).to_not be_valid
#   end

#   describe 'Associations' do
#     it { should belong_to(:customer) }
#     it { should have_many(:books).without_validating_presence }
#   end
# end
