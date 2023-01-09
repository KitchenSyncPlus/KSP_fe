# and a list of ingredients
require 'rails_helper'


RSpec.describe 'Recipes' do
  before(:each) do
    visit recipes_path
  end
  describe '#index' do
    it 'has a title \'Recipes Index\' ' do
      expect(page).to have_content('Recipes Index')
    end

    it 'can search for a recipe on the Edamam API', :vcr do
      fill_in "Search",	with: 'chicken'
      click_on 'submit'
      expect(current_path).to eq(recipes_path)
      expect(page).to have_content('chicken')
    end
  end
end