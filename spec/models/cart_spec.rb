require 'rails_helper'

RSpec.describe Cart, type: :model do
  subject { described_class.new }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  describe 'Associations' do
    it { should have_many(:books) }
  end
end
