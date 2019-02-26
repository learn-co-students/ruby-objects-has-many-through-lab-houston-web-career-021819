class Song
    attr_accessor :name, :genre, :artist
    @@all = []

    def initialize(name, artist, genre)
        self.name = name
        self.genre = genre
        self.artist = artist
        @@all << self
    end

    def self.all
        @@all
    end
end