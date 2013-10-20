class Artist

  attr_accessor :name
  attr_reader :songs, :genres

  @@all = []

  def self.all
    @@all
  end

  def self.count
    all.count
  end

  def self.reset_artists
    all.clear
  end

  def initialize
    @songs = []
    @genres = []
    @@all << self
  end

  def add_song(song)
    songs << song
    genres << song.genre
  end

  def songs=(song_arr)
    songs.clear
    song_arr.each { |song| add_song(song) }
  end

end
