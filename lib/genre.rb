class Genre
    attr_accessor :name, :song, :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs =  []
    end

    def self.all
        @@all
    end
    
    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        self.songs.map {|song| song.artist}
    end

end