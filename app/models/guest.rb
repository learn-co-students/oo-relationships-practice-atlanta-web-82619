class Guest

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def listings
        #returns an array of all listings a guest has stayed at
        guest_listings = []
        Trip.all.each do |trip|
            if trip.guest == self
                guest_listings << trip.listing
            end
        end
        guest_listing
    end
    
    def trips
        #returns an array of all trips a guest has made
        Trip.all.select {|trip| trip.guest == self}
    end
    
    def trip_count
        #returns the number of trips a guest has taken
        self.trips.size
    end
    
    def self.pro_traveller
        #returns an array of all guests who have made over 1 trip
        frequent_traveller = []
        Trip.all.each do |trip|
            if trip.guest.trip_count > 1
                frequent_traveller << trip.guest
            end
        end
        frequent_traveller
    end
    
    def self.find_all_by_name(name)
        #takes an argument of a name (as a string), returns the all guests with that name
        self.all.select {|guest| guest.name == name}
    end
end