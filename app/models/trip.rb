class Trip
  attr_accessor :guest, :listing

  # belongs_to :listing, :guest
  @@all = []
  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    @@all << self
  end

  def self.all
    @@all
  end

end