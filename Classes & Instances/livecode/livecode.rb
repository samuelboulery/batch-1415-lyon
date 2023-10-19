## Machine à sous
# Créer une classe SlotMachine.
# Créer une fonction d'instance qui me permet de jouer à la machine à sous (play).
# Cette fonction doit retourner une string sous cette forme =>
# "🍒🚀🔔 - Score : 0"
# Les symboles possibles sont : ["🍒", "🚀", "🔔", "⭐️", "🃏"]
# Voir le tableau des gains sur kitt

# "🍒🚀🔔⭐️🃏"

require_relative "slot_machine"

slot = SlotMachine.new

### Ajout pour le total_score
### Je créé une boucle qui va jouer 15 fois
15.times do
  puts slot.play
end
