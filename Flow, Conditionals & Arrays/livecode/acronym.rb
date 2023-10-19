## On demande une phrase à l'utilisateur
## On l'envoie à la méthode acronymize
## On récupère les premières lettres de chaque mots
## On les colle en majuscule
## On renvoie ça

def acronymize(sentence)
  words = sentence.split ## => words est un array
  letters = []

  words.each do |word|
    letters << word[0].upcase
  end

  return letters.join
end

puts "Donne moi ta phrase à acronymizer"
response = gets.chomp

puts acronymize(response)
