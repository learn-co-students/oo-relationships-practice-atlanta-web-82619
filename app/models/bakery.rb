class Bakery
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @desserts = []
        @@all << self
    end

    def self.all
        @@all 
    end
    
    # TODO: should I be adding a dessert instance or creating a dessert instance here?
    def add_dessert(dessert)
        self.desserts << dessert
    end

    def ingredients
        # should return an array of all ingredients this bakery uses
        desserts.map {|d| d.ingredients}.flatten.uniq
    end

    def desserts
        # should return an array 
        # of desserts the bakery makes
        @desserts
    end

    def average_calories
        calories = desserts.map {|d| d.calories}
        calories.sum / calories.size
    end

end