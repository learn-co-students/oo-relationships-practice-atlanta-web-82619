class Guest
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        Trip.all.map { |trip| trip.guest}.uniq
    end

    def self.find_all_by_name(name)
        self.all.select { |guest| guest.name == name }
    end

    def listings
        trips.map { |trip| trip.listing}
    end

    def trips
        trips = []
        Trip.all.select { |trip| trips << trip if trip.guest == self}
    end

    def trip_count
        self.trips.count
    end
end