# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all
  
  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'd6752df7d13af8cd86d414b33f82970d'
  
  # default contexts
  context :explore, :random_members
  context :navigation, :member_with_ad
  
  # loading contexts
  load_context :explore, :random_members, :cache => 5.minutes do
    @random_members = Member.random(10)
  end
  load_context :explore, :random_recipes do
    @random_recipes = Recipe.random(10)
  end
  
end
