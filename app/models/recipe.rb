class Recipe
  
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def self.random(amount = 10)
    recipe_names = [
      "Zürcher Geschnetzeltes",
      "Berner Zungenwurst",
      "Spätzle",
      "Eisbein",
      "Rösti",
      "Spargeln mit Kartoffeln",
      "Spiegelei mit Spinat",
      "Spaghetti Carbonara"
    ]
    recipes = recipe_names.map { |name| self.new name }
    recipes.sort_by { rand }
  end
  
end