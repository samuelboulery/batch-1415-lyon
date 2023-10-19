# On utilise la gem nokogiri pour lire et écrire dans un fichier HTML
# On utilise la gem open-uri pour ouvrir une URL
require "open-uri"
require "nokogiri"

# On demmande à l'utilisateur ce qu'il veut comme recette
p "Que veux tu comme recette ?"
# On récupère la réponse de l'utilisateur
recette = gets.chomp

# On crée l'URL de la recherche
url = "https://www.bbcgoodfood.com/search/recipes?q=#{recette}"

# On ouvre l'URL et on stocke le contenu dans une variable
html_file = URI.open(url).read
# On crée un objet Nokogiri et on lui donne le contenu de l'URL
html_doc = Nokogiri::HTML.parse(html_file)

# On recherche tous les éléments HTML qui correspondent à notre recherche
html_doc.search(".layout-md-rail__primary .card__content a").each do |element|
  # On affiche le texte et l'URL de chaque élément
  puts element.text.strip
  puts element.attribute("href").value
end
