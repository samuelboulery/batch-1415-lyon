musicians = ["toto", "tata", "tuto"]

# puts musicians[1] #=> "tata"

musicians << "titi"
p musicians

# puts musicians.count #=> 4

# musicians.each do |musician|
#   puts "My musician is #{musician.capitalize} ! Awesome"
#   sleep(0.3)
# end

# for index in 0...(musicians.size)
#   musician = musicians[index]
#   puts "#{index + 1} - #{musician}"
# end

# for musician in musicians
#   puts "Listen to #{musician}"
# end

# musicians.each do |musician|
#   puts "Hello #{musician}"
# end

# musicians.each_with_index do |musician, i|
#   puts "#{i + 1} - #{musician}"
# end


# capitalized_musicians = []

# musicians.each do |musician|
#   capitalized_musicians << musician.capitalize
# end

# p capitalized_musicians

# capitalized_musicians_2 = musicians.map do |musician|
#   musician.capitalize
# end

# p capitalized_musicians_2
# p musicians

# musicians.map! do |musician|
#   capitalize = musician.capitalize
#   capitalize.split("").join("-")
# end

# p musicians

# count_musicians_with_o = musicians.count do |musician|
#   musician.include?("o")
# end

# count_musicians_with_o = musicians.count { |musician| musician.include?("o") }

# puts count_musicians_with_o

# musicians_with_o = musicians.select do |musician|
#   musician.include?("o")
# end

# p musicians_with_o

# capitalized_musicians_3 = musicians.map do |musician|
#   musician.upcase
#   musician.capitalize
#   3
# end

# p capitalized_musicians_3

# starts_at = Time.now

# musicians.each do |musician|
#   puts musician
#   sleep(0.3)
# end

# ends_at = Time.now
# timer = ends_at - starts_at
# puts "Timer: #{timer}"

# starts_at = Time.now

# musicians.each do |musician|
#   puts musician
#   sleep(0.4)
# end

# ends_at = Time.now
# timer = ends_at - starts_at
# puts "Timer: #{timer}"


# def timer
#   starts_at = Time.now

#   yield

#   ends_at = Time.now
#   timer = ends_at - starts_at
#   puts "Timer: #{timer}"
# end

# timer do
#   musicians.each do |musician|
#     puts musician
#     sleep(0.4)
#   end
# end

# timer do
#   100.times do
#     2+2
#   end
# end

# def greet_in_english(first_name, last_name)
#   full_name = "#{first_name.capitalize} #{last_name.upcase}"
#   return "Hello, #{full_name}"
# end

# puts greet_in_english('john', 'lennon')

# def greet(first_name, last_name, greating)
#   full_name = "#{first_name.capitalize} #{last_name.upcase}"
#   return "#{greating.capitalize}, #{full_name}"
# end

# puts greet('john', 'lennon', "bonjour")

def international_greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name)
end

response = international_greet("nicolas", "iniesta") do |name|
  "#{name}, zouzou."
end

puts response

response_2 = international_greet("nicolas", "iniesta") do |name|
  "Bonjour, #{name}."
end

puts response_2
