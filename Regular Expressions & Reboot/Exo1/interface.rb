require_relative 'calculator'
# On va créer une calculatrice simple capable de réaliser les 4 opérations de base (+, - , *, /).
# Le programme demandera à l’utilisateur deux nombres et un des quatre opérateurs pour pouvoir
# effectuer un calcul simple et afficher le résultat pour l’utilisateur.

# Demander à l'utilisateur de donner un nombre
# Le mettre dans une variable

# Refaire la même chose pour un second nombre

# Demander quel type d'opération l'utilisateur souhaite faire

# Créer une méthodequi va prendre la premiere variable un opérateur et une seconde variable

# Tester l'opérateur avec une condition (addition, soustraction ...)

# Retourner le résultat

loop do
  puts 'quel est ton premier nombre?'
  variable1 = gets.chomp.to_f
  puts 'quel est ton second nombre ?'
  variable2 = gets.chomp.to_f
  puts 'quel est ton opérateur ? (+ - * /)'
  operateur = gets.chomp

  puts calcul(variable1, variable2, operateur)
  # if operateur == "+"
  #   puts variable1 + variable2
  # elsif operateur == "-"
  #   puts variable1 - variable2
  # elsif operateur == "/"
  #   puts variable1 / variable2
  # elsif operateur == "*"
  #   puts variable1 * variable2
  # end
  puts 'do you want to continue? (Y/N)'
  answer = gets.chomp

  break if answer == 'N'
end
