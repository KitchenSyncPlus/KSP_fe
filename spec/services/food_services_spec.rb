require 'rails_helper'

describe FoodServices do
  context "#ingredient" do
    it 'gets a list of ingredients' do
      @ingredient = FoodServices.new.recipe('chicken')
      require 'pry'; binding.pry
    end
  end
end
