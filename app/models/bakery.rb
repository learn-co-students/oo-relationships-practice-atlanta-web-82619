class Bakery
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def add_dessert(name)
        dessert = Dessert.new(name, self)
    end

    def ingredients
        # should return an array of all ingredients this bakery uses
        desserts.map {|d| d.ingredients}
    end

    def desserts
        # should return an array 
        # of desserts the bakery makes
        Dessert.all.find_all { |dessert| dessert.bakery == self }
    end

    def average_calories
        desserts.map {|d| d.calories}.average
    end

end