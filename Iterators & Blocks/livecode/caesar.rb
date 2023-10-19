## Créer un table de l'alphabet
## Demander un texte
## Le décaler du nombre voulu
## Le retourner

ALPHABET = ("A".."Z").to_a

def encrypt(sentence, key = -3)
  letters = sentence.upcase.split("")

  final_letters = letters.map do |letter|
    letter_index = ALPHABET.index(letter)
    letter = ALPHABET[(letter_index + key) % 26] unless letter_index.nil?
    letter
  end

  return final_letters.join
end

def decrypt(sentence, key = 3)
  return encrypt(sentence, key)
end

puts "Ta phrase ?"
sentence = gets.chomp


encrypted = encrypt(sentence)
puts "encrypted"
puts encrypted

decrypted = decrypt(encrypted)
puts "decrypted"
puts decrypted
