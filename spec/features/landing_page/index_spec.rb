require 'rails_helper'

RSpec.describe 'landing Page', type: :feature do

  describe 'navbar' do
    it 'has a link to recipes' do
      visit "/"
      expect(page).to have_link('Recipes')
      click_link 'Recipes'
      expect(current_path).to eq(recipes_path)
    end
  end

  describe 'As a visitor' do
    describe 'When I visit the Landing Page' do
      before(:each) do
        visit root_path
      end

      it 'I see the title of the applications' do
        expect(current_path).to eq root_path

        expect(page).to have_content 'KitchenSync+'
      end

      it 'I see a description of the app' do
        expect(page).to have_content('About our app')
      end

      it "I see 'Log in with Google'" do
        expect(page).to have_link("Log In With Google") # ^
      end

      describe "When I click 'register'" do
        before(:each) do
          click_link("Register")
        end
        it "I am redirected to '/users/register'" do
          expect(current_path).to eq(new_user_path)
        end

        xit "And I see a form where I can fill out my name, email, and password/confirmation" do
          fill_in :email, with: 'mary@gmail.com'
          fill_in :password, with: 'password123'
          fill_in :password_confirmation, with: 'password123'
          click_button 'Register'

          expect(current_path).to eq # user_dashboard
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
    end
  end
end
