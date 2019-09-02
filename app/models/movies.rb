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

end
