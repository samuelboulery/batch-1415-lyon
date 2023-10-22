class View
  def display_list(recipes)
    recipes.each_with_index do |recipe, i|
      puts "#{i + 1} - #{recipe.name} - #{recipe.description}"
    end
  end

  def name_recipe
    puts "quelle recette veux-tu ajouter ?"
    gets.chomp
  end

  def description_recipe
    puts "Comment la décrirais-tu ?"
    gets.chomp
  end

  def index_recipe
    puts "Quelle recette veux tu supprimer ?"
    gets.chomp.to_i - 1
  end
end