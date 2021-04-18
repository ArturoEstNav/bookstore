require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe Customer, type: :model do
  subject {
    described_class.new(
      address: "1428 Elm st",
      email: "arturo@telos.com",
      name: "Arturo",
      password: "Loremipsum"
    )
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without an address" do
    subject.address = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  describe 'validations' do
    it { should validate_uniqueness_of(:email) }
  end

end
