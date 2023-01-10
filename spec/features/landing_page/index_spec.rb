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
        expect(page).to have_link("Log In With Google")
      end

      describe "When I click 'register'" do
        before(:each) do
          click_link("Register")
        end
        it "I am redirected to '/users/register'" do
          expect(current_path).to eq(new_user_path)
        end
      end
    end
  end
end
