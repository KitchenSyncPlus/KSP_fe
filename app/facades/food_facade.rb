class FoodFacade
  def ingredient(ingr)
    service.ingredient(ingr)
  end

  def service
    FoodServices.new
  end
end
