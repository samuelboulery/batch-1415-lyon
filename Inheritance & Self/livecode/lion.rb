# On peut voir que la classe Animal est la classe mère de la classe Lion,
class Lion < Animal
  # On définit la méthode talk qui retourne le nom de l'animal
  def talk
    # On appelle la méthode talk de la classe mère Animal avec super
    # On ajoute "roar" à la fin de la phrase
    super + "roar"
  end

  # On définit la méthode eat qui prend un argument food et qui retourne une phrase
  def eat(food)
    # On appelle la méthode eat de la classe mère Animal avec super
    # On ajoute "Law of the Jungle!" à la fin de la phrase
    super + " Law of the Jungle!"
  end
end
