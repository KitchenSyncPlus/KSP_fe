class RecipesController < ApplicationController
  def index
    if params.has_key? :search
      # search for the recipe
      @search_term = params[:search]
      @ingredients = FoodFacade.search_results(params[:search])
      # @recipes =
    else
      # don't search for the recipe
    end 
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end