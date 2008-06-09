class SearchesController < ApplicationController
  
  context :explore do
    [:random_members, :random_recipes][rand(2)]
  end
  
  def index
    render
  end
  
end