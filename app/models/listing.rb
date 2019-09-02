class Listing

    attr_accessor :guest, :trip, :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        #eturns an array of all guests who have stayed at a listing
        all_guests = []
        Trip.all.each do |trip| 
            if trip.listing == self
                all_guests << trip.guest
            end
        end
        all_guests  
    end
    
    def trips
        #returns an array of all trips at a listing
        Trip.all.select {|trip| trip.listing == self}
    end
    
    def trip_count
        #returns the number of trips that have been taken to that listing
        self.trips.size
    end
   
    def self.find_all_by_city(city)
        #takes an argument of a city name (as a string) and returns all the listings for that city
        self.all.select {|listing| listing.city == city}
    end 
    def self.most_popular
        #finds the listing that has had the most trips
        most_popular = nil
        most_trips = 0
        Trip.all.each do |trip|
            if trip.listing.trip_count > most_trips
                most_trips = trip.listing.trip_count
                most_popular = trip.listing
            end
        end
        most_popular
    end
end