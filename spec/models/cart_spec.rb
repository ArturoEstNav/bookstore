require 'rails_helper'

RSpec.describe Cart, type: :model do
  let(:customer) { Customer.create(address: 'St', email: 'art@telos.com', name: 'Art', password: 'Loremipsum') }

  subject do
    described_class.new(
      customer: customer
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a customer reference' do
    subject.customer_id = nil
    expect(subject).to_not be_valid
  end

  describe 'Associations' do
    it { should belong_to(:customer) }
  end
end
