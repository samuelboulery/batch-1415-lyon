# Créer une variable solde, avec l'argent du joueur
# Créer un tableau comprenent le nom des cheveaux

# Affiche la liste des cheveaux en compétitions
# Afficher son solde d'argent
# L'utilisateur doit choisir un cheval dans la liste



# Lui afficher son solde

solde = 20
horses_names = ["pi", "pa", "pe"]
while solde >= 10
#loop do

  # On itére sur le tableau horses_names, dans notre bloc on a accées,
  # a deux variable name => pi, pa et pe | et i => 0, 1 et 2
  horses_names.each_with_index do |name, i|
    # 0 - pi
    # 1 - pa
    puts "#{i + 1} - #{name}"
  end

  puts "Your solde is #{solde}"

  puts "What horse's numero do you choose?"
  answer = gets.chomp.to_i - 1
  # puts horses_names[answer]
  # Désigner un cheval gagnant
  horse_win = horses_names.sample
  # Afficher le cheval gagnant
  puts "The winner horse is #{horse_win}"

  # Lui afficher son gain (50eur) ou sa perte (10eur)
  # Detecter si il a gagné ou perdu

  if horse_win == horses_names[answer]
      puts "You win"
      solde += 50
  else
      puts "You loose"
      solde -= 10
  end
  # break if solde < 10
end
