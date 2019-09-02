class Characters

  attr_accessor :char_name, :actor, :feature_title
  @@all = []

  def initialize(char_name, actor, feature_title)
    @char_name = char_name
    @actor = actor
    @feature_title = feature_title

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_appearances
    arr = []
    self.all.each do |all_chars|
      arr << all_chars.char_name
    end
    arr.max_by {|i| arr.count(i)}
  end

end
