require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# AIRBNB #
guest1 = Guest.new("Hanaa")
guest2 = Guest.new("Alex")
guest3 = Guest.new("Mark")
guest4 = Guest.new("Nick")

listing1 = Listing.new("Atlanta")
listing2 = Listing.new("Houston")
listing3 = Listing.new("NYC")
listing4 = Listing.new("Atlanta")

trip1 = Trip.new(listing1, guest1)
trip2 = Trip.new(listing2, guest1)
trip3 = Trip.new(listing1, guest2)

###############
###############
###############


binding.pry
0