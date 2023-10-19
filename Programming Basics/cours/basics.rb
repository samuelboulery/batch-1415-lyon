# puts 2 + 2
# puts "tata".upcase


# # Toto

# first_name = "Nicolas"
# last_name = "Iniesta"

# puts "Bonjour #{first_name} #{last_name}. Surnommé \"Toto\""

# puts 'Bonjour toto #{first_name}'

# array = ["Toto", "Tata", "Titi", "Tutu", "5"]

# p array
# p array.sort
# p array.count

# array_2 = %w[Huey Dewey Louie]
# p array_2

# age = 17

# puts age #=> 17

# age = age + 1

# puts age #=> 18

# # name = "toto"

# age = 17
# puts "You are #{age} years old"

# puts "Lucky you, it's your birthday!"
# age = age + 1 # same as 'age += 1'
# puts "You are now #{age}"


# city_name = "Lyon"
# population = 690000
# sentence = "#{city_name} a #{population} habitants"

# puts sentence

# population += 10000

# puts population
# puts sentence

# hello_1 = "Hello John!"
# hello_2 = "Hello Paul!"
# hello_3 = "Hello Ringo!"


# puts hello_1.gsub("Hello", "Hi").gsub("!", ".")
# puts hello_2.gsub("Hello", "Hi").gsub("!", ".")

# def say_hi(sentence)
#   return sentence.gsub("Hello", "Hi").gsub("!", ".")
# end

# def say_hello
#   "Hello"
# end

# def say_hi(sentence)
#    sentence.gsub("Hello", "Hi").gsub("!", ".")
# end


# puts say_hi(hello_1)
# puts say_hi(hello_2)
# puts say_hi("Hello, Nico!")
# # puts say_hi(4)

# puts say_hello

def summary(name, population)
  result = "#{name} a #{population} habitants"
  return result
end

city_name = "Lyon"
population = 690000
# sentence = "#{city_name} a #{population} habitants"
# puts summary(city_name, population)

# puts sentence

population += 10000

# puts population
result =  summary(city_name, population)

puts result
