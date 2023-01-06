# when I visit “/”
# I see a button titled 'register'
# When I click “register”
# I am redirected to “/users/register”
# And I see a form where I can fill out my name, email, and password/confirmation
# When I click “register”, I am redirected to my dashboard (logged in user show page)

require 'rails_helper'

RSpec.describe 'Landing Page' do
  context "index" do
    it 'has a link to register' do
      visit "/"
      click_link "Register"
      expect(current_path).to eq("/users/new")
    end

    it 'registers a new user' do
      visit "/users/new"
      fill_in "Name",	with: "Foo Bar"
      fill_in "Email", with: "foo@email.com"
      click_button 'submit'
    end
  end

end
