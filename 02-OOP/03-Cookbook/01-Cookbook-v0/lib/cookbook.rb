require "csv"
require_relative "recipe"

class Cookbook
  #fonction hash

  attr_reader :recipes

  def initialize(csv_path)
    @recipes = [] # Stocke instances de class recipe (name, description)
    @csv_path = csv_path

    CSV.foreach(csv_path) do |row|
     @recipes << Recipe.new(row[0], row[1])
   end
  end

  def add_recipe(recipe)
    @recipes << recipe
    update_csv
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
    update_csv
  end

  def update_csv
    CSV.open(@csv_path, 'w') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end

end

