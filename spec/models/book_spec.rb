require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(
      title: 'Eloquent Ruby',
      description: 'The ultimate Ruby guide',
      author: 'John',
      price: '25.99',
      merchant_id: 1,
      cart_id: 1
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a merchant_id' do
    subject.merchant_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an cart_id' do
    subject.cart_id = nil
    expect(subject).to_not be_valid
  end

  describe 'Associations' do
    it { should belong_to(:cart) }
    it { should belong_to(:merchant) }
  end
end




