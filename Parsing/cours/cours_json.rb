# On utilise la gem json pour lire et écrire dans un fichier JSON
require "json"
# On donne le chemin du fichier JSON à lire
filepath = "cours_json.json"
# On utilise la méthode read pour lire le fichier JSON
serialized_beatles = File.read(filepath)
# On utilise la méthode parse pour convertir le JSON en hash
beatles = JSON.parse(serialized_beatles)

# beatles = {
#   "title": "The Beatles",
#   "beatles": [
#     {
#       "first name": "John",
#       "last name": "Lennon",
#       "instrument": "Guitar"
#     },
#     {
#       "first name": "Paul",
#       "last name": "McCartney",
#       "instrument": "Bass Guitar"
#     }
#   ]
# }

# On modifie le hash pour modifier l'instrument de John
beatles["beatles"][0]["instrument"] = "Violon"

# beatles = {
#   "title": "The Beatles",
#   "beatles": [
#     {
#       "first name": "John",
#       "last name": "Lennon",
#       "instrument": "Violon"
#     },
#     {
#       "first name": "Paul",
#       "last name": "McCartney",
#       "instrument": "Bass Guitar"
#     }
#   ]
# }

# On utilise la méthode open pour éditer le fichier JSON
File.open(filepath, "wb") do |file|
  # On utilise la méthode generate pour convertir le hash en JSON
  file.write(JSON.generate(beatles))
end
