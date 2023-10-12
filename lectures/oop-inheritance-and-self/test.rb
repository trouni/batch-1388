require_relative "restaurant"
require_relative "fast_food_restaurant"
require_relative "fine_dining_restaurant"

royal_host = Restaurant.new("Royal Host", "Meguro", "diner style", 70)

puts "#{royal_host.name} is a #{royal_host.category} restaurant located in #{royal_host.location} with a #{royal_host.capacity} seats capacity."

# INHERITANCE

# ChildClass < ParentClass
# SubClass < SuperClass

# FastFood
mcdonald = FastFoodRestaurant.new("McDonald's", "Meguro", "burgers", 50)

puts "#{mcdonald.name} is currently #{mcdonald.open? ? "open" : "closed"}."

mcdonald.make_reservation("Scott")
p mcdonald

# FineDining
sushi_saito = FineDiningRestaurant.new("Sushi Saito", "Roppongi", "sushi", 12, 2)

puts "#{sushi_saito.name} is a #{sushi_saito.stars}-stars #{sushi_saito.category} restaurant located in #{sushi_saito.location} with a #{sushi_saito.capacity} seats capacity."

sushi_saito.make_reservation("Kimi")
sushi_saito.make_reservation("Asha")

puts "#{sushi_saito.name} is currently #{sushi_saito.open? ? "open" : "closed"}."
