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

      xit "I see three links: “login”, “register”, and “sign in or register with google”" do
        expect(page).to have_link("Login")
        expect(page).to have_link("Register")
        expect(page).to have_link("Sign in or Register with Google")
        expect(page).to_not have_link("Logout")
      end

      describe "When I click 'register'" do
        before(:each) do
          # click_link("Register")
        end
        it "I am redirected to '/users/register'" do
          # expect(current_path).to eq(register_path)
        end

        it "And I see a form where I can fill out my name, email, and password/confirmation" do
          # Oauth??
        end

        describe 'When I click "register",' do
          before :each do
            # click_button "register"
          end

          it " I am redirected to my dashboard (logged in user show page)" do

          end
        end
      end
    end
  end

  describe 'As A User' do
    it "pending" do

    end
  end
end
