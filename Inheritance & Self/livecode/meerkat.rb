# On peut voir que la classe Animal est la classe mère de la classe Meerkat,
class Meerkat < Animal
  # On définit la méthode talk qui retourne le nom de l'animal
  def talk
    # On appelle la méthode talk de la classe mère Animal avec super
    # On ajoute "bark" à la fin de la phrase
    super + "bark"
  end
end
