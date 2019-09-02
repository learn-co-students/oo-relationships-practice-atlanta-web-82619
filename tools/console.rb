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

egg = Ingredient.new("Egg", 50)
flour = Ingredient.new("Flour")
sugar = Ingredient.new("Sugar", 200)
butter = Ingredient.new("Butter", 75)
milk = Ingredient.new("Milk", 60)
chocolate = Ingredient.new("Chocolate", 200)
chocolateChips = Ingredient.new("Chocolate Chips", 80)
peanuts = Ingredient.new("Peanuts", 50)

cake = Dessert.new("Chocolate Cake", [egg, flour, sugar, butter, milk, chocolate])
cookies = Dessert.new("Cookies", [egg, flour, chocolate, chocolateChips, butter, sugar])

flatiron = Bakery.new("Flatiron Bakery")
yummyTime = Bakery.new("Yummy Time")

flatiron.add_dessert(cake)
flatiron.add_dessert(cookies)
yummyTime.add_dessert(cake)



#

# puts chips.name == "Chips"

binding.pry
0