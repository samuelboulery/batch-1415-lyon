# my_variable = "toto"

# puts my_variable ## => toto

# my_variable = "tata"

# puts my_variable ## => tata

# def my_method(name)
#   return "Hello, #{name}"
# end

# puts my_method("Nicolas")

# age = 15

# if age > 80
#   puts "Tu es un peu agé (juste un peu)"
# elsif age > 70
#   puts "Tu es un tout petit peu agé (juste un peu)"
# elsif age >= 18
#   puts "Tu peux voter"
# else
#   puts "Tu es trop jeune"
# end

# age = 15

# # if !(age >= 18)
# #   puts "tu ne peux pas voter"
# # end

# unless age >= 18
#   puts "tu ne peux pas voter"
# end

# def can_you_vote?(age)
#   if age >= 18
#     return true
#   else
#     return false
#   end
# end

# def can_you_vote_bis?(age)
#   return age >= 18
# end

# puts "Quel est ton âge ?"
# age = gets.chomp.to_i

# puts can_you_vote_bis?(response)

# condition ? code_exécuté_si_vrai : code_exécuté_si_faux

# age >= 18 ? response = "oui" : response = "non"
# response = age >= 18 ? "oui" : "non"

# puts response

def is_open?(hour)
  if (hour >= 9 && hour < 12) || (hour >= 14 && hour < 18)
    return true
  else
    return false
  end
end

# puts "Quelle heure ?"
# response = gets.chomp.to_i

# puts is_open?(response)

# puts "What do you want to do?"
#   action = gets.chomp

# case action
# when "read"
#   puts "You are in READ mode"
# when "write"
#   puts "You are in WRITE mode"
# when "exit"
#   puts "Bye Bye"
# else
#   puts "Wrong action"
# end

# if action == "read"
#   puts "You are in READ mode"
# elsif action == "write"
#   puts "You are in WRITE mode"
# elsif action == "exit"
#   puts "Bye Bye"
# else
#   puts "Wrong action"
# end


# puts "Quel nombre ?"
# response = gets.chomp.to_i

# puts "Ton chiffre est pair" if response.even?

count = 0

# while count < 10
#   puts count
#   count += 1
#   sleep(0.1)
# end

# until count == 10
#   puts count
#   count += 1
#   sleep(0.1)
# end

# loop do
#   puts count
#   break if count == 10
#   count += 1
#   sleep(0.3)
# end

# 5.times do
#   puts count
#   count += 1
#   sleep(0.3)
# end

# for num in [1, 2, 3]
#   puts num
#   sleep(0.3)
# end

# names = ["toto", "titi", "tata"]

# for name in names
#   puts name.capitalize
#   sleep(0.3)
# end

beatles = ["john", "ringo", "seb"]
          ##  0       1       2
          ## -3       -2     -1


# puts beatles[0]
# puts beatles[4].class
# puts beatles[-1]
# puts beatles.first
# p beatles.first(2)
# puts beatles.last
# p beatles.last(5)

beatles << "paul"

# p beatles

beatles[2] = "georges"

# p beatles
new_beatles = beatles.sort_by do |name|
  name.size
end

# p new_beatles

## beatles = ["john", "ringo", "georges", "paul"]

beatles.each do |beatle|
  puts "Hello, #{beatle.capitalize}"
  sleep(0.3)
end

beatles.each_with_index do |beatle, i|
  puts "Hello, #{beatle.capitalize} - #{i}"
  sleep(0.3)
end

beatles.each {|beatle| puts "Hello, #{beatle.capitalize}" }
beatles.each_with_index {|beatle, i| puts "Hello, #{beatle.capitalize} - #{i}" }
