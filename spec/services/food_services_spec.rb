require 'rails_helper'

describe FoodService do
  context "#recipes" do
    it 'gets a list of ingredients', :vcr do
      @recipes = FoodService.recipes('chicken')
      expect(@recipes).to have_key :hits
      expect(@recipes[:hits].count).to eq(20)

      expect(@recipes[:hits][0]).to have_key :recipe
      expect(@recipes[:hits][0][:recipe]).to have_key :ingredients
      expect(@recipes[:hits][0][:recipe][:ingredients]).to be_an Array

      @recipes[:hits][0][:recipe][:ingredients].each do |ingredient|
        expect(ingredient).to be_a Hash
      end
    end
  end
end
