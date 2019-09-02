class Movies

  attr_reader :title, :year
  @@all = []

  def initialize(title, year)
    @title = title
    @year = year

    @@all << self
  end

  def self.all
    @@all
  end

  # movie with the most actors
  def self.most_actors
    arr = []
    Characters.all.each do |all_chars|
      arr << all_chars.feature_title
    end
    arr.max_by {|i| arr.count(i)}.title
  end

  # for fun: age of actor when they did a certain movie
  def actor_age(actor_name)
    age = 0
    Characters.all.each do |chars|
      if chars.feature_title.title == self.title && chars.actor.name == actor_name
        age = chars.feature_title.year - chars.actor.dob
      end
    end
    age
  end

end
