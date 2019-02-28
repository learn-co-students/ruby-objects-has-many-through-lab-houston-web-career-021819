class Artist
    attr_accessor :name, :song, :genre
    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end

    def add_song(song)
        song.artist = self
        @@all << new_song 
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        
    end

    def songs
        Song.all.select {|song| song.artist == self }
    end

    def genres
        self.songs.map {|song| song.genre }
    end

    def self.all
        @@all
    end
end