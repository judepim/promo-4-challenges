#puts and gets (display and ask data from the user)
# store all actions required from the user

class Display
  def create_a_new_recipe
    puts "what recipe (name) do you want to create?"
    print "> "
    return gets.chomp
  end

  def ask_for_description
    puts "what recipe (description) do you want to create?"
    print "> "
    return gets.chomp
  end

  def list_all_recipes(recipes)
    recipes.each do |recipe|
      puts recipe.name
    end
  end

  def destroy_a_recipe
    puts "what recipe (id) do you want to destroy?"
    print "> "
    return gets.chomp.to_i
  end

end