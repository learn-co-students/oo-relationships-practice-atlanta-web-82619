class Actor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def characters
        Character.all.select {|char| char.actor == self}
    end

    def movies
        self.characters.map {|char| char.movies}
    end

    def shows
        self.characters.map {|char| char.shows}
    end

    def self.character_count
        hash = Hash[self.all.map {|actor| [actor, actor.characters.length]}]
    end

    def self.most_characters
        self.character_count.max_by{|k,v| v}
    end

    def self.all
        @@all
    end
end# create files for your ruby classes in this directory
