class SlotMachine
  ## Machine à sous
  # Créer une classe SlotMachine.
  # Créer une fonction d'instance qui me permet de jouer à la machine à sous (play).
  # Cette fonction doit retourner une string sous cette forme =>
  # "🍒🚀🔔 - Score : 0"
  # Les symboles possibles sont : ["🍒", "🚀", "🔔", "⭐️", "🤩"]
  # Voir le tableau des gains sur kitt

  # "🍒🚀🔔⭐️🃏"

  # On créé une methode qui lancé lors de la création d'une machine (SlotMachine.new)
  def initialize
    # On definie la liste des symboles possible qu'on attribue à la varible
    # @symboles
    @symboles = ["🍒", "🚀", "🔔", "⭐️", "🤩"]
    # On definie la variable total_score qui sera incrémenté à chaque tour
    @total_score = 0
    # On definie un hash qui contient les gains possible en fonction du symbole
    @hash = {
      "🍒" => 10,
      "🚀" => 20,
      "🔔" => 30,
      "⭐️" => 40,
      "🤩" => 50
    }
  end

  # On créé une methode qui sera appelé lorsqu'on lance la methode play
  def play
    # On definie la variable tirage qui contient un tableau de trois symboles
    @tirage = [@symboles.sample, @symboles.sample, @symboles.sample]
    # On incremente le total_score en appelant la methode score
    @total_score += score(@tirage)
    # On retourne le tirage et le score
    "#{@tirage.join} - Score : #{score(@tirage)} / Score total : #{@total_score}"
  end

  # On créé une methode qui prend en parametre un tableau de trois symboles
  # qui retourne le score
  def score(tirage)
    # Compte l'occurence de chaque valeur et retourne un hash => {"⭐️"=>2, "🔔"=>1}
    hash_tirage = tirage.tally

    # On parcours le hash
    # key => "⭐️"
    # value => 2
    hash_tirage.each do |key, value|
      # Si la valeur est égale à 3
      # On a trois fois le même symbole
      if value == 3
        # On retourne le gain en fonction du symbole
        return @hash[key]

      # Si la valeur est égale à 2 et que le tirage contient un symbole "🤩" (joker)
      elsif value == 2 && tirage.include?('🤩')
        # On retourne le gain en fonction du symbole
        # On test si notre key est égale à "🤩" si elle est égale alors sa veut dire
        # qu'on a deux joker ducoup on retourne 25
        if key == "🤩"
          return 25
        # Sinon on retourne le gain en fonction du symbole divisé par deux
        else
          return @hash[key] / 2
        end
        # return key == "🤩" ? 25 : @hash[key] / 2
      else
        # Tu n'as aucune combinaison gagnante
        # On retourne 0
        return 0
      end
    end
  end
end
