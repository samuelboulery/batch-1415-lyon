## On demande une phrase à l'utilisateur
## On l'envoie à la méthode acronymize
## On récupère les premières lettres de chaque mots
## On les colle en majuscule
## On renvoie ça

def acronymize_noobie_version(sentence)
  words = sentence.split ## => words est un array
  letters = []

  words.each do |word|
    letters << word[0].upcase
  end

  return letters.join
end

def acronymize_medium_version(sentence)
  words = sentence.split

  letters = words.map do |word|
    word[0].upcase
  end

  return letters.join
end

def acronymize_masterchief_version(sentence)
  sentence.split.map {|word| word[0].upcase}.join
end

puts "Donne moi ta phrase à acronymizer"
response = gets.chomp

puts "acronymize_noobie_version"
puts acronymize_noobie_version(response)

puts "acronymize_medium_version"
puts acronymize_medium_version(response)

puts "acronymize_masterchief_version"
puts acronymize_masterchief_version(response)
