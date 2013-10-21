class Genre

  attr_accessor :name
  attr_reader :songs, :artists
  @@all = []

  def self.all
    @@all
  end

  def self.count
    all.count
  end

  def self.reset_genres
    all.clear
  end

  def initialize
    @songs = []
    @artists = []
    @@all << self
  end

end
