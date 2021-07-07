class Genre
  @@all = []
  attr_accessor :name

  def initialize (name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    genre_songs = self.songs
    genre_songs.map do |song|
      song.artist
    end
  end
end
