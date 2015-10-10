class RecipesController < ApplicationController
  def index
  	@search_text = params[:search] || 'Chocolate'
  	
  	@recipes = Recipe.for(@search_text)
  end
end
