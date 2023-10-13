require_relative "view"
require_relative "recipe"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def add
    # 1. Ask the user for the name and description of the new recipe
    name = @view.ask_for("name")
    description = @view.ask_for("description")
    # 2. Create an instance of Recipe using the name and description
    recipe = Recipe.new(name, description)
    # 3. Store the recipe instance in the cookbook
    @cookbook.create(recipe)
  end

  def remove
    # Display the recipes
    display_recipes
    # Ask the user the index of the recipe to remove (make sure it's the index)
    index = @view.ask_for_index
    # We remove the recipe from the cookbook
    @cookbook.destroy(index)
  end

  private

  def display_recipes
    # Retrieve the recipes from the cookbook
    recipes = @cookbook.all
    # Display the recipes with the view
    @view.display_list(recipes)
  end
end
