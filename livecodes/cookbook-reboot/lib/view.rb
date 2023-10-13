class View
  def display_list(recipes)
    puts "-" * 30
    puts "Here are your recipes:"
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
    puts
  end

  def ask_for(thing)
    puts "What's the #{thing} of the recipe?"
    print "> "
    gets.chomp
  end

  def ask_for_index
    puts "Which recipe number?"
    print "> "
    gets.chomp.to_i - 1
  end
end
