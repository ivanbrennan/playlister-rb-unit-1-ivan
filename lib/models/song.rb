class Song
  attr_accessor :name, :artist
  attr_reader :genre
  @@all = []

  def self.all
    @@all
  end

  def self.reset_songs
    all.clear
  end

  def initialize
    @@all << self
  end

  def genre=(g)
    @genre = g
    g.songs << self
  end

end
