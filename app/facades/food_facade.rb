class FoodFacade

  def self.search_results(meal)
    search_results = FoodService.recipes(meal)[:hits]
    search_results.map do |recipe|
      Recipe.new(label: recipe[:recipe][:label])
    end
  end

  def self.recipes(meal)
    ingredients_data = FoodService.recipes(meal)
    ingredients = ingredients_data[:hits][0][:recipe][:ingredients]
    ingredients.map { |i| Ingredient.new(i) }
  end

  def service
    FoodServices.new
  end
end
