# On appelle les fichiers qui contiennent les classes
# pour pouvoir utiliser les classes dans ce fichier
require_relative 'animal'
require_relative "lion"
require_relative "meerkat"
require_relative "warthog"

# on crée une instance de la classe Animal
animal = Animal.new("Patapouf")
# puts animal
# p animal.name

# on crée une instance de la classe Lion
lion = Lion.new("Simba")
# p lion.talk

# on crée une instance de la classe Meerkat
meerkat = Meerkat.new("Timon")

# on crée une instance de la classe Warthog
warthog = Warthog.new("Pumba")
# p "meerkat :#{ meerkat.talk }"
# p "warthog :#{ warthog.talk }"

# on crée un array avec les 3 instances d'animaux
all_animals = [warthog, meerkat, lion]

# on itère sur l'array pour afficher le résultat de la méthode talk
all_animals.each do |animal|
  # on affiche le résultat de la méthode talk
  p animal.talk
end

# p Animal.phyla

# On appelle la méthode eat de la classe Animal sur l'instance lion de la classe Lion
p lion.eat("Pumba")
