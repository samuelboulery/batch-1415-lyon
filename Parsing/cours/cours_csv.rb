# On utilise la gem csv pour lire et écrire dans un fichier CSV
require "csv"
# On donne le chemin du fichier CSV à lire
filepath = "cours_csv.csv"

# On utilise la méthode foreach pour lire ligne par ligne
CSV.foreach(filepath, headers: :first_row) do |row|
  # Here, row is an array of columns
  # On affiche le prénom, le nom et l'instrument
  puts "#{row["First Name"]} | #{row["Last Name"]} | #{row["Instrument"]}"
end

# On utilise la méthode open pour éditer le fichier CSV
CSV.open(filepath, "wb") do |csv|
  # On écrit les lignes une par une
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["John", "Lennon", "Guitar"]
  csv << ["Paul", "McCartney", "Bass Guitar"]
end
