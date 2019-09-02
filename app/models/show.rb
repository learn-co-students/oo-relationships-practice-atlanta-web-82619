class Show

    attr_accessor :name, :cast, :actor, :role

    @@all = []

    def initialize(name)
        @name = name
        @cast = {}
        @@all << self
    end

    def add_cast_member(actor, role)
        if !self.cast[actor]
            self.cast[actor] = role
        end
        self.cast
    end

    def fire_cast_member(actor)
        self.cast.delete(actor)
    end

    def self.all
        @@all
    end

