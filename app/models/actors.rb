require 'pry'

class Actors

  attr_reader :name, :gender, :dob
  @@all = []

  def initialize(name, gender, dob)
    @name = name
    @gender = gender
    @dob = dob

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_characters
    arr = []
    Characters.all.each do |all_chars|
      arr << all_chars.actor.name
    end
    arr.max_by {|i| arr.count(i)}
  end

end
