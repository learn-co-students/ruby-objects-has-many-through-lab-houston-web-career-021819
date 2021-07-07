require 'song.rb'

class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |each_song|
      each_song.genre == self
    end
  end

  def artists
    self.songs.collect do |each_song|
      each_song.artist
    end
  end

  def self.all
    @@all
  end

end

