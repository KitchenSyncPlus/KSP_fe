class FoodFacade
  def recipes(meal)
    ingredients = service.recipes(meal)[:hits][0][:recipe][:ingredients]

    ingredients.map { |i| Ingredient.new(i) }
  end

  def service
    FoodServices.new
  end
end
