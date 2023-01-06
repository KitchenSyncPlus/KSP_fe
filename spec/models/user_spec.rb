require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Foo bar', email: 'email@email.com')
  end
  it 'exists' do
    expect(@user).to be_a User
  end

  it 'has @name' do
    expect(@user.name).to eq('Foo bar')
    expect(@user.email).to eq('email@email.com')
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end
end