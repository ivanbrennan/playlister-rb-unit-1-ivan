#require "spec_helper"

describe "Genre" do

  #let (:genre) { Genre.new }

  it "can initialize a genre" do
  end

  it "has a name" do
  end

  it "has many songs" do
  end

  describe "with artists" do

    it "has many artists" do
    end

    it "keeps unique artists" do
    end

  end

  describe "class methods" do

    it "keeps track of all known genres" do
    end

    it "can reset genres" do
    end

  end

  it "only knows about its own artists" do
    #genre = Genre.new.tap { |g| g.name = "rap" }
    #no_genre_artist = Artist.new
    #genre_artist = Artist.new
    #genre_artist.add_song(Song.new.tap { |s| s.genre = genre })
    #genre.artists.count.should eq(1)
  end

end
