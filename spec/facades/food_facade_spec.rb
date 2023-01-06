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
end