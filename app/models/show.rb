class Show
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def characters
        Character.all.select{|char| char.shows.include?(self)}
    end

    def on_the_big_screen
        Movie.all.select{|movie| movie.name == self.name}
    end

    def actors
        self.characters.map{|char| char.actor}
    end

    def self.all
        @@all
    end
end