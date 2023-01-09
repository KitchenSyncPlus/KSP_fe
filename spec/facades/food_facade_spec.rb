require 'rails_helper'

describe FoodFacade do
  context "#recipes" do
    it 'creates an Array of Ingredient Objects', :vcr do
      ingredients = FoodFacade.new.recipes('chicken')

      expect(ingredients).to be_an Array

      ingredients.each do |i|
        expect(i).to be_an Ingredient
      end
    end
  end

  context '#search_results' do
    it 'creates an Array of Recipe Objects', :vcr do
      recipes = FoodFacade.new.search_results('chicken')
      expect(recipes).to be_an Array
      recipes.each do |recipe_label|
        expect(recipe_label.label).to be_a String
      end
    end
  end
end