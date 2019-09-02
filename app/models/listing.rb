class Listing
    attr_reader :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select { |listings| listings.city == city }
    end

    def self.most_popular
        self.all.select {}
    end

    def guests
        trips.map { |trip| trip.guest}
    end

    def trips
        trips = []
        Trip.all.select { |trip| trips << trip if trip.listing == self}
    end

    def trip_count
        self.trips.count
    end
end