require "spec_helper"

describe "Genre" do

  let (:genre) { Genre.new }

  it "can initialize a genre" do
    expect(genre).to be_an_instance_of(Genre)
  end

  it "has a name" do
    genre.name = "classical"
    expect(genre.name).to eq("classical")
  end

  it "can have songs" do
    expect(genre.songs).to eq([])
  end

  it "has many songs" do
    3.times { Song.new.genre = genre}
    expect(genre.songs.count).to eq(3)
  end

  describe "with artists" do

    it "can have artists" do
      expect(genre.artists).to eq([])
    end

    it "has many artists" do
      3.times do
        song = Song.new.tap {|s| s.genre = genre }
        Artist.new.add_song(song)
      end
      expect(genre.artists.count).to eq(3)
    end

    it "keeps unique artists" do
      artist = Artist.new
      2.times do
        song = Song.new.tap { |s| s.genre = genre }
        artist.add_song(song)
      end
      expect(genre.artists.count).to eq(1)
    end

  end

  describe "class methods" do

    before(:each) { Genre.reset_genres }

    it "keeps track of all known genres" do
      expect(Genre.count).to eq(0)
      2.times { Genre.new }
      expect(Genre.count).to eq(2)
    end

    it "can reset genres" do
      genre
      Genre.reset_genres
      expect(Genre.count).to eq(0)
    end

  end

  it "only knows about its own artists" do
    genre = Genre.new.tap { |g| g.name = "rap" }
    no_genre_artist = Artist.new
    genre_artist = Artist.new
    genre_artist.add_song(Song.new.tap { |s| s.genre = genre })
    genre.artists.count.should eq(1)
  end

end
