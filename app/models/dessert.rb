class Dessert
    attr_reader :name
    attr_accessor :ingredients

    @@all = []
    def initialize(name, ingredients = [])
        @name = name
        @ingredients = ingredients
        @@all << self
    end

    def add_to_bakery(bakery)
        bakery.add_dessert(self)
    end

    def add_ingredient(ingredient)
        #pass in ingredient object
        self.ingredients << ingredient
    end

    def add_ingredients(ingredients) #ingredients is an array of ingredient objects
        ingredients.each {|i| self.ingredients << i}
    end

    def calories
        self.ingredients.map { |ingredient| ingredient.calorie_count }.sum
    end

    def self.all 
        @@all 
    end
end