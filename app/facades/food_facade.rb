class FoodFacade

  def self.search_results(meal)  #this one is updated
    search_results = FoodService.recipes(meal)[:hits]
    search_results.map do |recipe|
      Recipe.new(label: recipe[:label])
    end
  end
    #these 2 can be merged into 1?
  def self.recipes(meal)
    recipe_data = FoodService.recipes(meal)[:hits]
    ingredients = recipe_data[0][:ingredientLines]
    # require "pry"; binding.pry
    ingredients.map do |i|
      Ingredient.new(i)  #ingredientLines, not hash of ingredients
    end
  end

  def service
    FoodServices.new
  end
end
