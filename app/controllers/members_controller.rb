class MembersController < ApplicationController
  
  context :navigation, :member, :show => :member_with_ad
  context :explore, :random_members
  
  def index
    @members = Member.random(100)
  end
  
  def show
    @recipes = Recipe.random(10)
  end
  
  def edit
    render
  end
  
end