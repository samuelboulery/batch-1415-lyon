# Require des gems que nous avons besoin
require 'nokogiri'
require 'open-uri'
require 'csv'

# Nous créeons un tableau vide qui contiendra tout les éléments de notre liste
list = []

# Nous renseignons le path de notre csv
filepath = "data.csv"

# Nous créeons la fonction welcome pour afficher un message un bienvenue dans la console
def welcome
  puts '--------------'
  puts 'Bienvenue dans la liste de noel'
  puts '-------------'
end

# Fonction qui permet d'afficher le menu et de retourner le choix
def show_menu
  # 1. Afficher les choix possible
  puts 'le menu (list / add / delete / deletebyname / mark / idea / quit )'
  # 2. Recuperer le choix de l'utilisateur
  choice = gets.chomp
  # 3. Retourner son choix
  return choice
end

# Fonction qui permet d'afficher chaque élément de la liste
# Qui prends en parametre un tableau (ici notre list)
def show_list(list_noel)
  # On itere sur chaque element de notre liste avec l'index
  list_noel.each_with_index do |element, index|
    # => element = {
    #   name: 'Poupée',
    #   mark: false
    # }
    # On créé une varible coche qui vaut l'inverse de la mark de l'element
    coche = element[:mark] ? '✅' : '❌'
    # On affiche dans la console pour chaque element la string sous cette forme
    # 1 - ❌ Poupée
    puts "#{index + 1} - #{coche} #{element[:name]}"
  end
end

# On crée une fonction add_item qui prends en parametre notre liste
def add_item(list_noel)
  # 1 demander le nom du nouvel objet
  name = gets.chomp
  # 2 Créer un hash valide
  hash = { name: name }
  # 3 Je veux le rajouter dans ma list
  list_noel << hash
  # 4 Afficher la list
  show_list(list_noel)
end

# On créé une fonction qui permet de supprimer un element de notre liste
# Qui prends en parametre une liste
def delete_item(list_noel)
  # 1. Afficher la liste
  show_list(list_noel)
  # 2. Lui demande l'index de l'objet a supprimer
  puts 'Quel objet voulez-vous retirer (donner son id) ?'
  choice = gets.chomp.to_i - 1
  # 3. Retirer de ma liste
  list_noel.delete_at(choice)
  # 4. Affiche ma liste
  show_list(list_noel)
end

# On créé une fonction qui permet de supprimer un element de la liste via son nom
# Elle prends en parametre notre liste
def delete_item_by_name(list_noel)
  # 1. Afficher la liste
  show_list(list_noel)
  # 2. Lui demande l'index de l'objet a supprimer
  puts 'Quel objet voulez-vous retirer (donner son nom) ?'
  choice = gets.chomp
  # On utilise la methode find_by_name qui nous retourne un element de la liste
  # En fonction de la liste et du nom demandé
  object = find_by_name(list_noel, choice)

  # On vérifie que l'élément existe
  if object
    # Si il existe nous le supprimons
    list_noel.delete(object)
  else
    # Sinon on informe l'utilisateur
    puts 'L\'objet n\'a pas été trouvé !'
  end

  # On affiche la liste de noel
  show_list(list_noel)
end

# On crée une fonction qui permet de rechercher dans un tableau de hash
# un element dont la clef :name correspond au parametre name
def find_by_name(array, name)
  # On itere sur chaque element du tableau avec le .find
  # Puis il nous retourne le premiere element qui correspond au critere que nous
  # avons mis dans le bloc
  # Puis cet élément nous le mettons dans la varible object
  object = array.find do |element|
    element[:name] == name
  end

  # Nous retournons notre object
  return object
end

# Nous créons une methode qui permet de marquer ou de démarquer un element
def mark(list_noel)
  # Nous affichons la liste
  show_list(list_noel)
  puts 'Qu\'est ce que tu as acheté (index)'
  choice = gets.chomp.to_i - 1

  # Nous inversons l'état actuel de la clef mark de notre element
  # list_noel[choice][:mark] => true
  # !list_noel[choice][:mark] => false
  list_noel[choice][:mark] = !list_noel[choice][:mark]

  # On affiche la liste
  show_list(list_noel)
end

# On a la fonction idea qui prends en parametre la list

def idea(list_noel)
  # Demander à l'utilisateur une idée (jean, shirt)
  puts "Que veux tu rechercher ?"
  idea = gets.chomp

  # Scrapper le site en fonction de l'idée de l'utilisateur
  html_content = URI.open("https://www.etsy.com/search?q=#{idea}", "User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0").read
  # html_content.class => string

  # On parse notre string pour la rendre en un élément exploitable
  site = Nokogiri::HTML.parse(html_content)

  # On créé un tableau vide
  all_articles = []

  # On recupere sur le site tout élément qui corresponde aux selecteurs css
  # .first(6) => nous prennons les 6 premiers
  # puis nous itérons dessus
  site.search('.v2-listing-card__info .v2-listing-card__title').first(6).each_with_index do |element, index|
    # Pour chaque élément nous affichons un message dans la console
    # 1 - Jeans trop beau
    puts "#{index + 1} - #{element.text.strip}"
    # et nous mettons notre élément dans notre tableau vide que nous avons créé
    all_articles << element.text.strip
  end

  # Nous demandons à notre utilisateur quel article il veut garder
  puts 'Quel article voulez-vous garder ? (index)'
  choice = gets.chomp.to_i - 1

  # Nous récuperons l'article grâce à notre tableau et à l'index
  article = all_articles[choice]

  # Nous mettons l'article choisi dans notre liste en créent un hash correspondant
  list_noel << { name: article }

  # Nous affichons la liste
  show_list(list_noel)
end

# Nous créeons une fonction pour enregistrer notre liste dans un csv
# Avec en parametre un filepath => "data.csv"
def save_data(list_noel, filepath)
  # Nous utilisons la gem CSV pour ouvrir notre fichier ou le créer si inexistant
  CSV.open(filepath, "wb") do |csv|
    # Nous créeons la premiere ligne avec les titres de nos colonnes
    csv << ["name", "mark"]
    # Nous itérons sur chaque élément de notre liste
    list_noel.each do |element|
      # Pour chaque element nous créeons une ligne dans le csv
      # pour ce faire nous créons un tableau qui a le nom et la mark
      csv << [element[:name], element[:mark]]
    end
  end
end

# Nous créons une méthode pour chargé la donnée contenue dans notre csv
def load_data(list_noel, filepath)
  # Nous utilisons la methode foreach avec le filepath et
  # headers: :first_row qui permet d'exploiter le nom des colonnes
  CSV.foreach(filepath, headers: :first_row) do |row|
    # Pour chaque ligne de csv nous créons une varible mark
    # qui convertie la string row["mark"] => "false" en un boolean
    mark = row["mark"] == "true"
    # nous ajoutons à notre liste l'élément sous la forme d'un hash
    list_noel << { name: row["name"], mark: mark }
  end
end

# Au lancement du programme nous chargons la donnée enregistré
load_data(list, filepath)

# Nous affichons un message de bienvenue
welcome

# Nous créeons une boucle
loop do
  # Nous demandons à l'utilisateur de faire un choix grace a show_menu qui nous le return
  case show_menu
  when 'list'
    show_list(list)
  when 'add'
    add_item(list)
  when 'delete'
    delete_item(list)
  when 'mark'
    mark(list)
  when 'deletebyname'
    delete_item_by_name(list)
  when 'idea'
    idea(list)
  when 'quit'
    save_data(list, filepath)
    break
  else
    puts 'Le choix n\'est pas bon'
  end
end
