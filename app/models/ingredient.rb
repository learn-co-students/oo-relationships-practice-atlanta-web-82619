class Ingredient
    attr_reader :name, :calorie_count

    @@all = []
    def initialize(name, calorie_count = 100)
        @name = name 
        @calorie_count = calorie_count
        @@all << self
    end

    def dessert
        Dessert.all.find {|d| d.ingredients.include?(self)}
    end

    def bakery
        allDessertsWithThisIngredient = Dessert.all.find_all {|d| d.ingredients.include?(self)}
        Bakery.all.find {|b| (b.desserts & allDessertsWithThisIngredient)}
    end

    def self.all
        @@all 
    end

    def self.find_all_by_name(ingredient)
        @@all.find_all {|i| i.include?(ingredient)}
    end
end


