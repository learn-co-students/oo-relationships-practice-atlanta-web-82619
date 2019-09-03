class Movie
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def characters
        Character.all.select {|char| char.movies.include?(self)}
    end
    
    def actors
        self.characters.map {|char| char.actor}
    end

    def self.num_of_actors
        hash = Hash[self.all.map {|movie| [movie , movie.actors.length]}]
    end

    def self.most_actors
        self.num_of_actors.max_by{|k,v| v}
    end

    def self.all
        @@all
    end
end