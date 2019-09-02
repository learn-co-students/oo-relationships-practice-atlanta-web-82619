class Dessert
    attr_reader :name, :bakery
    attr_accessor :ingredients

    @@all = []
    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @ingredients = []
        @@all << self
    end

    def add_ingredient(ingredient)
        #should I check to see if ingredient already exists or should I pass in ingredient object instead of creating new ingredient object
        self.ingredients << ingredient
    end

    def add_ingredients(ingredients) #ingredients is an array of ingredient objects
        ingredients.each {|i| self.ingredients << i}
    end

    def calories
        @ingredients.map { |ingredient| ingredient.calorie_count }.sum
    end

    def self.all 
        @@all 
    end
end