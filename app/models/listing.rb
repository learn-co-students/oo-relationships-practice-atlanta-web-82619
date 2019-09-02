class Listing
  # has_many :trips
  # has_many :guests, through: :trips
  attr_reader :name, :city

  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def accept_trip(guest)
    Trip.new(guest, self)
  end

  def guests
    trips.map {|trip| trip.guest}
  end

  def trips
    Trip.all.select {|trip| trip.listing ==  self}
  end

  def trip_count
    trips.size
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    @@all.select {|listing| listing.city == city}
  end

  def self.most_popular
    @@all.max {|listing_1, listing_2| listing_1.trip_count <=> listing_2.trip_count}
  end
end