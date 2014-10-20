#it will fetch and store data of the Model
#tell the view to show or gather data to and from the user
require_relative "display"

class Controller

  def initialize(cookbook)
     # Injection de dependance
     @cookbook = cookbook
     @display = Display.new
  end

  def list
    # recupere toutes les recettes
    recipes = @cookbook.recipes
    # affiche les recettes
    @display.list_all_recipes(recipes)
  end

  def create
    #ajoute les recettes
    name = @display.create_a_new_recipe
    description = @display.ask_for_description
    recipe = Recipe.new(name, description)

    @cookbook.add_recipe(recipe)
  end

  def destroy
    id = @display.destroy_a_recipe
    @cookbook.remove_recipe(id)
  end

end


