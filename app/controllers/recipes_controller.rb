class RecipesController < ApplicationController
  def index
    if params.has_key? :search
      # search for the recipe
      @search_term = params[:search]
      # pry
      @ingredients = FoodFacade.recipes(params[:search])
    else
      # don't search for the recipe
    end
  end

  def show
  end
end
