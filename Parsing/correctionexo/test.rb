# TODO: you can build your christmas list program here!
list = []
def show_list(list_noel)
  list_noel.each_with_index do |present, index|
    puts "#{index + 1}- #{present[:name]} #{present[:mark] ? "[X]" : "[ ]"}"
  end
end
# list << {name: "nouveau", mark: false}
# Dire "Bonjour"
puts "_____________"
puts "WELCOME"
puts "_____________"
loop do
  puts "What do you want to do? (list, add, delete, mark, quit)"
  puts user_choice = gets.chomp
  case user_choice
# Que veut-on faire?
  when "list"
    puts show_list(list)
    # list.each_with_index do |present, index|
    #   puts "#{index + 1}- #{present[:name]} #{present[:mark] ? "[X]" : "[ ]"}"
    # end
  when "add"
    puts "What you want to add?"
    add_present = gets.chomp
    list << { name: add_present, mark: false }
  when "delete"
    puts "What number you want to delete of your list?"
    delete_present = gets.chomp.to_i
    list.delete_at(delete_present - 1)
  when "mark"
    puts show_list(list)
    # list.each_with_index do |present, index|
    #   puts "#{index + 1}- #{present[:name]} #{present[:mark] ? "[X]" : "[ ]"}"
    # end
    puts "Which one do you want to mark"
    user_choice = gets.chomp
    chosen_gift = list[user_choice.to_i - 1]
    chosen_gift[:mark] = true
  when "quit"
    break
  else
    puts "Cette réponse n'est pas valide"
    # mettre 4 choix: list -> mettre la liste | add -> demander à l'utilisateur
    # un objet à mettre dans sa liste | delete -> supprimer un objet de sa liste
    # quit -> quitter le programme
  end
end
# case user_choice
# when "add"
#   puts "add"
# when "delete"
#   puts "delete"
# when "quit"
#   break
# when "list"
#   puts "list"
# else
#   puts "pas trouvé"
