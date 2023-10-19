require_relative "castle"
require_relative "skyscrapper"
require_relative "house"

instance_castle = Castle.new("super chateau", 100, 200, 500, "Yanis")
p instance_castle
p instance_castle.butler.castle.butler.castle
# # house = House.new(17, 20, 5, "Ma maison")
# # p house
# # p "Area Home : #{house.floor_area}"
# # p "Home moat ? #{house.has_a_moat?}"

# # instance_castle = Castle.new(17, 20, 5, "Mon chateau")

# # # On appel sur l'instance de la class Castle la mathode has_a_moat?
# # # p instance_castle.has_a_moat?
# # # p instance_castle.categories

# # # p Castle.categories.join(", ")

# # p House.price_per_square_meter("Paris")


# # castle.moat = true
# # p castle.floor_area
# # p house.floor_area
# # castle2 = Castle.new(117, 200, 50, "Mon chateau 2")

# # p "castle moat ? #{castle.has_a_moat?}"
# # p "castle2 moat ? #{castle2.has_a_moat?}"


# # p "Area Castle : #{castle.floor_area}"

# instance_skyscrapper = Skyscrapper.new(17, 30, 90, "Ma super tour")
# p instance_skyscrapper.capitalized_name
# p instance_skyscrapper
# p instance_skyscrapper.type_of_owner


# # p "Area Skyscrapper : #{skyscrapper.floor_area}"
