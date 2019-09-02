class Shows

  attr_reader :title, :year_start, :year_end
  @@all = []

  def initialize(title, year_start, year_end)
    @title = title
    @year_start = year_start
    @year_end = year_end

    @@all << self
  end

  def self.all
    @@all
  end

  # def show_list
  #   self.all.each do |show_list|
  #   end
  #   show_list
  # end

  # def on_the_big_screen
  #   Movies.all.each do |movie_list|
  #     self.show_list
  #     binding.pry
  #   end
  # end

  def on_the_big_screen
    arr = []
    Characters.all.each do |all_chars|
      if all_chars.feature_title.title == self.title
        arr << all_chars.feature_title.title
      end
    end
    arr.uniq
  end

end
