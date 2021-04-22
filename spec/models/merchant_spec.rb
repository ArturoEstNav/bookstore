require 'rails_helper'

RSpec.describe Merchant, type: :model do
  subject do
    described_class.new(
      email: 'art@telos.com',
      name: 'Arturo',
      password: 'Loremipsum',
      phone: '555-683-5688'
    )
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a phone' do
      subject.phone = nil
      expect(subject).to_not be_valid
    end
  end

  describe '#update_earnings' do
    it 'Should increment merchant earnings' do
      previous_earnings = subject.earnings
      subject.update_earnings(20)
      result = (previous_earnings < subject.earnings)
      expect(result).to be_truthy
    end
  end

  describe 'validations' do
    it 'is not valid if the email is already taken' do
      # Ignored case sensitivity due to Devise ensuring that emails
      # are stored in lowercase
      should validate_uniqueness_of(:email).ignoring_case_sensitivity
    end
  end

  describe 'Associations' do
    it { should have_many(:books) }
  end
end
