require "spec_helper"

describe "Song" do

  let (:song) { Song.new }
  let (:artist) { Artist.new }
  let (:genre) { Genre.new }

  it "can initialize a song" do
    expect(song).to be_an_instance_of(Song)
  end

  it "has a name" do
    song.name = "Spottieottiedopaliscious"
    expect(song.name).to eq("Spottieottiedopaliscious")
  end

  it "has an artist" do
    song.artist = artist
    expect(song.artist).to eq(artist)
  end

  it "has a genre" do
    song.genre = genre
    expect(song.genre).to eq(genre)
  end

  describe "class methods" do

    before(:each) { Song.reset_songs }

    it "keeps track of all created songs" do
      song
      expect(Song.all.count).to eq(1)
    end

    it "can reset the existing songs" do
      song
      Song.reset_songs
      expect(Song.all.count).to eq(0)
    end

  end

end
