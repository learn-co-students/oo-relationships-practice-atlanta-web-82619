class Guest
  attr_reader :name
  # has_many :trips
  # has_many :listings through: :trips
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def take_trip(listing)
    Trip.new(self, listing)
  end

  def listings
    trips.map {|trip| trip.listing}
  end

  def trips
    Trip.all.select {|trip| trip.guest == self}
  end

  def trip_count
    trips.size
  end

  def self.all
    @@all
  end

  def self.pro_traveller
    @@all.select {|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    @@all.select {|guest| guest.name == name}
  end
end