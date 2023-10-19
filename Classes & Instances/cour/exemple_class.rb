# 1 - On require_relative la classe Car (car.rb)
require_relative "car"

# 2 -  On instancie une nouvelle voiture
# 2 -  voiture1 = Car.new
# 2 -  On affiche la voiture
# 2 -  p voiture1
# 2 -  On affiche la classe de la voiture => Car
# 2 -  p voiture1.class
# 2 -  On affiche la couleur de la voiture => white (par défaut)
# 2 -  p voiture1.get_color
# 2 -  On change la couleur de la voiture => blue
# 2 -  voiture1.set_color("blue")
# 2 -  On affiche la couleur de la voiture => blue
# 2 -  p voiture1.get_color
# 2 -  On créé une nouvelle voiture => voiture2
# 2 -  voiture2 = Car.new
# 2 -  On défini la couleur de la voiture => pink
# 2 -  voiture2.set_color("pink")
# 2 -  On affiche la couleur de la voiture => pink
# 2 -  p "Voiture 2 #{voiture2.get_color}"

# 3 -  On instancie une nouvelle voiture avec la couleur blue
# 3 -  voiture1 = Car.new({color: "blue"})
# 3 -  On affiche la voiture
# 3 -  p voiture1
# 3 -  On utilise la méthode start (démarrer la voiture) grâce à l'instance voiture1
# 3 -  voiture1.start
# 3 -  On affiche si la voiture est démarrée => true
# 3 -  p voiture1.is_started?

# 4 -  On instancie une nouvelle voiture
# 4 -  voiture1 = Car.new()
# 4 -  On affiche la voiture
# 4 -  p voiture1
# 4 -  On défini le nombre de roue de la voiture => 90
# 4 -  voiture1.set_wheel(90)
# 4 -  On affiche le nombre de roue de la voiture => 90
# 4 -  p voiture1.get_wheel

# 5 -   On instancie une nouvelle voiture avec les paramètres suivants:
# 5 -   - color: red
# 5 -   - wheel: 9
# 5 -   - plate: 564563
# 5 -   - started: true
# 5 -   voiture1 = Car.new({started: true, wheel: 9, color: "red", plate:"564563"})
# 5 -   On affiche la voiture
# 5 -   p voiture1

# 6 -  On instancie une nouvelle voiture
# 6 -  voiture1 = Car.new()
# 6 -  On récupère la couleur de la voiture via la méthode get_color
# 6 -  p voiture1.color # => voiture1.get_color
# 6 -  On change la couleur de la voiture grâce à attr_writer
# 6 -  voiture1.color = "blue"
# 6 -  On affiche la couleur de la voiture grâce à attr_reader => blue
# 6 -  p voiture1.color
# 6 -  Vu qu'on utilise attr_writer et attr_reader, on peut utiliser attr_accessor
# 6 -  On affiche le nombre de roue de la voiture => 4 (attr_accessor)
# 6 -  p voiture1.wheel
# 6 -  On change le nombre de roue de la voiture => 100000000 (attr_accessor)
# 6 -  voiture1.wheel = 100000000
# 6 -  On affiche le nombre de roue de la voiture => 100000000 (attr_accessor)
# 6 -  p voiture1.wheel
# 6 -  On essaye de changer le numéro de série de la voiture => erreur (methode private)
# 6 -  voiture1.set_serial_number
