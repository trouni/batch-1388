require "csv"

class Cookbook
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = [] # instances of Recipe
    load_csv
  end

  def all
    @recipes
  end

  def create(new_recipe)
    @recipes << new_recipe
    save_csv
  end

  def destroy(recipe_index)
    @recipes.delete_at(recipe_index)
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row) do |row|
      # row is an instance of CSV::Row
      recipe = Recipe.new(row["name"], row["description"])
      @recipes << recipe # instance of recipe
    end
  end

  def save_csv
    # We want to store the content of the @recipes array into the CSV file
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ["name", "description"]
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
