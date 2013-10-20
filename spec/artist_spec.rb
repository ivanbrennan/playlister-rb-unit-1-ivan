require "spec_helper"

describe "Artist" do

  let (:artist) { Artist.new }
  let (:song) { Song.new }
  let (:genre) { Genre.new }

  it "can initialize an artist" do
    expect(artist).to be_an_instance_of(Artist)
  end

  it "has a name" do
    artist.name = "Tupac"
    expect(artist.name).to eq("Tupac")
  end

  describe "with songs" do

    it "has songs" do
      expect(artist.songs).to eq([])
    end

    it "can have a song added" do
      artist.add_song(song)
      expect(artist.songs).to include(song)
    end

    it "knows all its songs" do
      artist.songs = [Song.new, Song.new]
      expect(artist.songs.count).to eq(2)
    end

    it "has genres" do
      expect(artist.genres).to eq([])
    end

    it "remembers its genres" do
      song.genre = genre
      artist.add_song(song)
      expect(artist.genres).to include(genre)
    end

  end

  describe "class methods" do

    before (:each) { Artist.reset_artists }
    it "has artists" do
      expect(Artist.all).to eq([])
    end

    it "keeps track of all created artists" do
      expect(Artist.all).to include(artist)
    end

    it "can count the number of artists created" do
      expect(Artist.count).to eq(0)
      artist
      expect(Artist.count).to eq(1)
    end

    it "can reset the existing artists" do
      artist
      Artist.reset_artists
      expect(Artist.count).to eq(0)
    end

  end

end
