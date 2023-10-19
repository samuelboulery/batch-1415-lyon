require "date"
## Définir un prix de manière aléatoire
## Demander un prix au joueur
## Comparer les deux
## Lui répondre en fonction du résultat
## Quitter et le féliciter de manière sympathique s'il a trouvé le résultat

price = (1..100).to_a.sample
looser = true
starts_at = Time.now
count = 0

puts "*************************"
puts "*************************"
puts "*************************"
puts "**********Hello**********"
puts "*************************"
puts "*************************"
puts "*************************"

# loop do
#   puts "What's your price ?"
#   response = gets.chomp.to_i

#   if response == price
#     puts "Good job !"
#     break
#   elsif response > price
#     puts "Too hiiiiigh ...."
#   elsif response < price
#     puts "Too looooow ...."
#   end
# end

puts price

150.times do
  if Time.now - starts_at > 30
     break
  end
  puts "What's your price ?"
  response = gets.chomp.to_i
  count += 1 ## count = count + 1

  if response == price
    puts "Good job !"
    looser = false
    break
  elsif response > price
    if response - price > 15
      puts "VERYY TOOO HIIIIGH ...."
    else
      puts "High, but not too much"
    end
  elsif response < price
    if price - response > 15
      puts "VERYY TOOO LOOOOOOOWW ...."
    else
      puts "Low, but not too much"
    end
  end
end

puts "LOOOSEEER" if looser

ends_at = Time.now

chrono = ends_at - starts_at

puts "⏱️ You take #{chrono.round(2)} seconds. Woow"
puts "☝️ Counter : #{count} tries"
