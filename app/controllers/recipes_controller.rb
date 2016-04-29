
class RecipesController < ApplicationController
  def index
    # @search_term = params[:search] || 'chocolate' #http://localhost:3000/courses/index?looking_for=python or ...
    @search_term = params[:search] || 'chocolate'
    @recipes = Recipes.for(@search_term)
    # <!--<% v.gsub ('Kahl&uacute;a-Spiked', 'Kahlúa-Spiked') if v.include? "Kahl&uacute;a-Spiked" %>-->

  end
end
