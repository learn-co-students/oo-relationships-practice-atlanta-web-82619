require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

andrea = Guest.new("Andrea")
ron = Guest.new("Ron")
chris = Guest.new("Chris")
alycia = Guest.new("Alycia")

fourSeasonsAtl = Listing.new("Four Seasons Atlanta", "Atlanta")
loewsHotel = Listing.new("Loews Hotel", "Atlanta")
gaTerrace = Listing.new("Georgian Terrace", "Atlanta")
omniJax = Listing.new("Omni Jacksonville", "Jacksonville")

andrea.take_trip(omniJax)
alycia.take_trip(omniJax)
alycia.take_trip(gaTerrace)
chris.take_trip(loewsHotel)
ron.take_trip(fourSeasonsAtl)

flatiron = Bakery.new("Flatiron Bakery")
yummy_time = Bakery.new("Yummy Time")

cake = Dessert.new("Chocolate Cake", flatiron)
cookies = Dessert.new("Cookies", yummy_time)

egg = Ingredient.new("Egg", 50)
flour = Ingredient.new("Flour")
chocolate = Ingredient.new("Chocolate", 200)
chips = Ingredient.new("Chips")
peanuts = Ingredient.new("Peanuts", 50)

cookies.add_ingredients([egg, flour, chocolate, chips])
cake.add_ingredients([egg, flour, chocolate,])

#

# puts chips.name == "Chips"

binding.pry
0