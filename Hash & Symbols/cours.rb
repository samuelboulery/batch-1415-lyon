student_names = ["Toto", "Tata", "Titi", "Tutu"]
student_ages = [31, 32, 12, 8]

# students[2]
# students.first
# students.last
# students.last(2)

# student_names.each_with_index do |name, i|
#   age = student_ages[i]
#   puts "#{name} a #{age} ans"
# end

students = { "Toto" => 31, "Tata" => 32, "Titi" => 12, "Tutu" => 8 }

# students = [
#   {
#     name: "Toto",
#     age: 31,
#     city: "Lyon"
#   },
#   {
#     name: "Tata",
#     age: 32,
#     city: "Toulouse"
#   }
# ]

# puts students["Tata"]
# puts students[2]
# puts students["Toto"]

# students["Tete"] = 45

# p students

# students["Toto"] = 32

# p students

# students.each do |name, age|
#   puts "#{name} a #{age} ans"
# end

cities = {
  "Lyon" => {
    country: "France",
    population: 6900000,
    monument: "Fourvière"
  },
  "Paris" => {
    country: "France",
    population: 7200000,
    monument: "Tour Eiffels"
  },
}

# puts cities["Paris"][:population]

def tag(tag_name, content, attributes = {})
  html_attributes = ""
  attributes.each do |key, value|
    html_attributes << "#{key}='#{value}' "
  end

  "<#{tag_name} #{html_attributes}>#{content}</#{tag_name}>"
end

puts tag("a", "WeDressFair", {href: "https://www.wedressfair.fr", class: "btn"})

puts tag("a", "WeDressFair", href: "https://www.wedressfair.fr", class: "btn")


puts tag("h2", "Toto fait du bateau")


# <a href="https://www.toto.fr/" class="btn">Tissu double gaze uni oeko-tex</a>
