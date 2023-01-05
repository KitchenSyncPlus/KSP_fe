require 'rails_helper'

RSpec.describe 'landing Page', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit the Landing Page' do
      before(:each) do
        visit root_path
      end

      it 'I see the title of the applications' do
        within('#app_title') do
          expect(current_path).to eq root_path
          expect(page).to have_content 'Kitchen Sync Plus'
        end
      end

      it 'I see a description of the app' do
        # within('#app_description') do
          expect(page).to have_content('community kitchen... (placeholder)')
        # end
      end

      it "I see three links: “login”, “register”, and “sign in or register with google”" do
        expect(page).to have_link("Login") #session conditional
        expect(page).to have_link("Register") # ^^
        expect(page).to have_link("Log in or Register using Google") #^
        expect(page).to_not have_link("Logout") #navbar session conditional
      end

      describe "When I click 'register'" do
        before(:each) do
          # click_link("Register")
        end
        xit "I am redirected to '/users/register'" do
          expect(current_path).to eq(register_path)
        end

        xit "And I see a form where I can fill out my name, email, and password/confirmation" do
          fill_in :username, with:'bond007'
          fill_in :password, with: 'password123'
          fill_in :password_confirmation, with: 'password123'
          click_button 'Register'

          expect(current_path).to eq #user_dashboard
        end
      end
    end
  end

  describe 'As A User' do
    describe "When I click 'Login' on the landing page" do
      before :each do
        visit root_path
        click_link "Login"
      end
      it "pending" do

      end
    end
  end
end
