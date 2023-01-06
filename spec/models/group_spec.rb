require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @group = Group.new(name: 'Foo Group', about: 'about foo stuff')
  end
  it 'exists' do
    expect(@group).to be_a Group
  end

  it 'has @name' do
    expect(@group.name).to eq('Foo Group')
  end

  it 'has @about' do
    expect(@group.about).to eq('about foo stuff')
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:about) }
    it { should have_many(:users).through(:group_users) }
  end
end

