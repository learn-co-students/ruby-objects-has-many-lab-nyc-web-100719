class Artist
    attr_accessor :name
    @@songs = []

    def initialize(name)
        @name = name
    end

    def songs
        @@songs = Song.all.select do |song| 
            song.artist.name == self.name
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        @@songs.length
    end
end