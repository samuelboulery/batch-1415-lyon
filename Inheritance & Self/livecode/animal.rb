# On peut voir que la classe Animal est la classe mère des classes Lion, Meerkat et Warthog.
class Animal
  # On définit les attr_reader pour pouvoir lire les variables d'instance (getter)
  attr_reader :name

  # On définit la méthode initialize qui prend un argument name
  def initialize(name)
    # On définit une variable d'instance @name
    @name = name
  end

  # On définit la méthode talk qui retourne le nom de l'animal
  def talk
    "#{@name} "
  end

  # On définit la méthode self.phyla (méthode de classe) qui retourne un array avec les phyla
  def self.phyla
    %w[Porifera Coelenterata Platyhelminthes Nematoda Annelida Arthropoda Mollusca Echinodermata Protochordata Vertebrata]
  end

  # On définit la méthode eat qui prend un argument food et qui retourne une phrase
  def eat(food)
    "#{@name} eats a #{food}."
  end
end
