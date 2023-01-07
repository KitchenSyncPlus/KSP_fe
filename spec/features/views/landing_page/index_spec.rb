require 'rails_helper'

RSpec.describe 'Landing Page' do
  before(:each) do
    visit '/'
  end
  context "index" do
    it 'has a link to all users' do
      click_link "Users"
      expect(current_path).to eq(users_path)
    end

    it 'has a link to register' do
      click_link "Register"
      expect(current_path).to eq("/users/new")
    end

    it 'has a link to groups' do
      click_link "Groups"
      expect(current_path).to eq(groups_path)
    end

    # move to correct location
    it 'registers a new user' do
      visit "/users/new"
      fill_in "Name",	with: "Foo Bar"
      fill_in "Email", with: "foo@email.com"
      click_button 'submit'
    end
  end

end
