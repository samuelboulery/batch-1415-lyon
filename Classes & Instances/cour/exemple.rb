# On require la gem pry-byebug
require "pry-byebug"

# On défini une méthode serialize qui prend un paramètre word
def serialize(word)
  # On utilise la méthode strip pour supprimer les espaces en début et fin de chaîne
  # On utilise la méthode capitalize pour mettre la première lettre en majuscule
  # On retourne le résultat
  return word.strip.capitalize
end

# On défini une méthode fullname qui prend deux paramètres first_name et last_name
def fullname(first_name, last_name)
  # binding.pry => permet de mettre un point d'arrêt
  # On accées au commande suivante une fois dans le debugger:
  # next => permet de passer à la ligne suivante
  # step => permet de rentrer dans la méthode
  # continue => permet de continuer jusqu'au prochain point d'arrêt
  binding.pry

  # On défini une variable serialize_first_name qui contient le résultat de la méthode serialize avec le paramètre first_name
  serialize_first_name = serialize(first_name)
  # On met un point d'arrêt
  binding.pry
  # On défini une variable serialize_last_name qui contient le résultat de la méthode serialize avec le paramètre last_name
  serialize_last_name = serialize(last_name)
  # On retourne le résultat de la concaténation des deux variables
  return "#{serialize_first_name} #{serialize_last_name}"
end

# On affiche le résultat de la méthode fullname avec les paramètres "     yAniS" et "     dAhMANe      "
puts fullname("     yAniS", "     dAhMANe      ")
