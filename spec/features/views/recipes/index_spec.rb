require 'rails_helper'


RSpec.describe 'Recipes' do
  describe '#index' do
    it 'has a title \'Recipes Index\' ' do
      visit "/recipes"
      expect(page).to have_content('Recipes Index')
    end

    it 'can search for a recipe on the Edamam API' do
      visit "/recipes"
      fill_in "Search",	with: "chicken"
      click_on 'submit'
      expect(current_path).to eq(recipes_path)
    end
  end
end