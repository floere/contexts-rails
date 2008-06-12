class RecipesController < ApplicationController
  
  context :explore, :random_recipes,
    :index => :random_members
    
    
    
    
    
    
    
    
  context :navigation, :member_with_ad
  
  def index
    @recipes = Recipe.random(10)
  end
  
  def show
    @recipe = Recipe.random(1).first
  end
  
end