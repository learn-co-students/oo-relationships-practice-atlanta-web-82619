class Character
    attr_reader :name, :actor, :movies, :shows
    @@all = []
    def initialize(name, actor)
        @name = name
        @actor = actor
        @movies = []
        @shows = []
        @@all << self
    end

    def new_movie(movie)
        @movies << movie
    end

    def new_show(show)
        @shows << show
    end

    def appearances
        self.movies + self.shows
    end

    def self.appearances 
        hash = Hash[self.all.map {|char| [char, char.appearances.length]}]
    end

    def self.most_appearances
        self.appearances.max_by{|k,v| v}
    end

    def self.all
        @@all
    end
end