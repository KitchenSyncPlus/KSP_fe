require 'rails_helper'

describe 'An Ingredient' do
  before(:each) do
    attributes = {
      text: 'long ingredient name',
      quantity: 1.1,
      measure: 'pound',
      food: 'exact food type',
      weight: 10.1,
      foodCategory: 'General Category',
      foodId: "big_alphanumeric_string",
      image: "an Image URI"
    }

    @sample_ingredient = Ingredient.new(attributes)
  end

  context "#init" do
    it 'exists' do
      expect(@sample_ingredient).to be_an Ingredient
    end

    it 'has @text, @quantity, @measure, @food, @weight, @foodCategory, @foodId, @image' do
      expect(@sample_ingredient.text).to eq('long ingredient name')
      expect(@sample_ingredient.quantity).to eq(1.1)
      expect(@sample_ingredient.measure).to eq('pound')
      expect(@sample_ingredient.food).to eq('exact food type')
    end
  end
end
