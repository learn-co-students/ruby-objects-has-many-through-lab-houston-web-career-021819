class Artist
  @@all = []
  attr_accessor :name

  def initialize (name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song (name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    artists_songs = self.songs
    artists_songs.map do |song|
      song.genre
    end
  end
end
