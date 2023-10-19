# On créé un tableau de hash, chaque hash correspond à un produit qui a 3 clefs, name price et available
stock = [
  {
    name: "kiwi",
    price: 2,
    available: 6
  },
  {
    name: "banane",
    price: 2,
    available: 3
  },
  {
    name: "pomme",
    price: 1.5,
    available: 90
  },
  {
    name: "poire",
    price: 3,
    available: 4
  }
]

# On créé un hash temporaire qui va nous servire de cart donc les produits que nous avons acheté
# Il aura cette forme une fois des produits mis dedans
# {
#   "pomme": {
#     price: 3,
#     quantity: 4
#   },
#   "poire": {
#     price: 2,
#     quantity: 6
#   }
# }

cart = {}

# On affiche un petit message dans la console pour dire bonjour
puts "------------"
puts "Bienvenue dans le supermarché"
puts "------------"

# On créer une boule pour permettre à l'utilisateur de choisir différents articles
loop do
  puts "Listes de nos produits:"
  # On itére sur chaque produit situé dans notre tableau stock
  stock.each do |product|
    # Pour chaque produit on affiche une ligne, pour donné le nom, le prix et la quantité

    # product = {name: "pomme", price: 1.5, available: 90}
    puts "#{product[:name]}, prix: #{product[:price]}eur (Quantité restante #{product[:available]})"
  end

  # On peut intéroger l'utilisateur pour savoir quel produit il souhaite acheter
  puts "Que voulez vous acheter ? (quit pour quitter)"
  # On récupere sa réponse et on la mets dans la variable answer
  answer = gets.chomp
  # Si jamais l'utilisateur souhaite quitter on break la boucle
  break if answer == "quit"

  # L'utilisateur a bien choisi un article, et donc nous souhaitons savoir combien il en veut
  puts "Combien en voulez-vous ?"
  # On mets le nombre d'article dans une varible nommé quantity
  quantity = gets.chomp.to_i

  # On cherche dans notre stock le produit pour le quel la key :name correspond à answer
  # Le find return le premier élément pour le quel la condition renvoi true
  article = stock.find do |product|
    # On compare le nom du produit avec celle donné par l'utilisateur
    product[:name] == answer
  end

  # Maintenant que nous avons l'article
  # article = {name: "pomme", price: 1.5, available: 90}
  # On vérifie que nous avons assez en stock
  if article[:available] >= quantity
    # Si jamais on en a assez en stock alors l'utilisateur peut en acheter
    # Nous vérifions si il en dispose déjà dans son caddy
    if cart.key? answer
      # Si jamais il en a déjà alors nous mettons le nombre de produit à jour
      # cart[answer] = {:price=>1.5, :quantity=>3}
      cart[answer][:quantity] += quantity
    else
      # Dans le cas ou il n'en a pas déjà alors nous créons un nouvel article dans le caddie
      # l'article prendra la forme d'un hash, avec une clef price et une clef quantity (nombre choisi)
      article_tempo = {price: article[:price], quantity: quantity}
      # Et enfin nous le mettons dans son cart
      cart[answer] = article_tempo
    end
    # Nous mettons à jours le stock du magasin
    article[:available] -= quantity
  else
    # Si on en a pas on lui affiche un petit message, avec le stock disponible
    puts "va voir ailleur"
    puts "Nous avons seulement #{article[:available]} #{article[:name]}(s) 🥲"
  end
end

# L'utilisateur a fait quit, alors nous quittons la boucle
# Et nous lui affichons son ticket de caisse
puts "Vous avez fini vos courses !"
# Nous créons une varible temporaire pour le prix total de ses achats
price_total = 0
# On itere sur chaque element de son caddie
cart.each do |key, value|
  # Nous créons une variable qui vaut le prix de l'article x le nombre
  # 2 pommes à 6eur soit 12eur
  price_total_article = value[:quantity] * value[:price]
  # Nous lui affichons un récap par article
  # poire: 1 X 3 = 3
  puts "#{key}: #{value[:quantity]} X #{value[:price]} = #{price_total_article}"
  # Et nous mettons le prix total du caddie à jours
  price_total += price_total_article
end

# Et enfin on lui affiche le prix total de tous ses articles
puts "Vous en avez pour #{price_total}eur"
