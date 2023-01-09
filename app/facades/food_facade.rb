class FoodFacade

  def search_results(meal)
    search_results = service.recipes(meal)[:hits]
    search_results.map do |recipe|
      Recipe.new(label: recipe[:recipe][:label])
    end
  end

  def recipes(meal)
    ingredients = service.recipes(meal)[:hits][0][:recipe][:ingredients]

    ingredients.map { |i| Ingredient.new(i) }
  end

  def service
    FoodServices.new
  end
end
