require 'rails_helper'

describe 'Groups' do
  before(:each) do
    @user = create(:user)
    visit "/users/#{@user.id}/groups/new"
  end
  context "new user group" do
    it 'creates a new group for a user' do
      fill_in "Name",	with: Faker::Color.color_name 
    end
  end

end