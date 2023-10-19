students = ["Alice", "cedric", "Kennye", "Tom"]


last_student = students.last #=> "Tom"

first_students = students[0..-2] #=> ["Alice", "cedric", "Kennye"]

puts "Congratulations you have #{students.count} students : #{first_students.join(", ")} and #{last_student}"
