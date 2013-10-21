class Song
  attr_reader :genre

  def genre=(g)
    @genre = g
    g.songs << self
  end

end
