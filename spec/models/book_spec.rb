# require 'rails_helper'

# RSpec.describe Book, type: :model do
#   let(:customer) { Customer.create(address: 'St', email: 'art@telos.com', name: 'Art', password: 'Loremipsum') }
#   let(:merchant) { Merchant.create(phone: '555', email: 'ae@telos.com', name: 'Bookstore', password: 'Loremipsum') }
#   let(:cart) { Cart.create(customer_id: customer.id) }

#   subject do
#     described_class.new(
#       title: 'Eloquent Ruby',
#       description: 'The ultimate Ruby guide',
#       author: 'John',
#       price: '25.99',
#       merchant_id: merchant.id
#     )
#   end

#   it 'is valid with valid attributes' do
#     expect(subject).to be_valid
#   end

#   it 'is not valid without a title' do
#     subject.title = nil
#     expect(subject).to_not be_valid
#   end

#   it 'is not valid without a description' do
#     subject.title = nil
#     expect(subject).to_not be_valid
#   end

#   it 'is not valid without a price' do
#     subject.price = nil
#     expect(subject).to_not be_valid
#   end

#   it 'is not valid without an author' do
#     subject.author = nil
#     expect(subject).to_not be_valid
#   end

#   it 'is not valid without a merchant_id' do
#     subject.merchant_id = nil
#     expect(subject).to_not be_valid
#   end

#   describe 'Associations' do
#     it { should belong_to(:merchant) }
#     it { should belong_to(:cart).without_validating_presence }
#   end
# end
