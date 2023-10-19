# On utilise la gem json pour lire et écrire dans un fichier JSON
require "json"
# On utilise la gem open-uri pour ouvrir une URL
require "open-uri"
# puts "#{user["name"]} - #{user["bio"]}"

# Je veux que mon utilisateur tape un nom github
puts "Donne moi le nom que tu veux chercher"
user_name = gets.chomp
# Je vais chercher sur l'api la string
url = "https://api.github.com/users/#{user_name}"
# On ouvre l'URL et on stocke le contenu dans une variable
user_serialized = URI.open(url).read
# Cette string la je la parse pour avoir un hash
user = JSON.parse(user_serialized)
# Sur ce hash je peux aller chercher la clef qui m'interesse (id)
id = user["id"]
# Puis je l'affiche dans ma console
p "L'id est : #{id}"
