require 'song.rb'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |each_song|
      each_song.artist == self
    end
  end

  def genres
    self.songs.collect do |each_song|
      each_song.genre
    end
  end

  def self.all
    @@all
  end

end

