require 'pry'

class Artist
attr_accessor :name, :songs, :artist
@@songs = [ ]

# @@total_songs = [ ]
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

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        add_song(song)
    end

    def self.song_count
        #return total num of songs associated to all existing artist
        #   so, Song.all --> calls on the Song class which has all the songs
        #       & selects each song to get song with artist(which returns true) 
        #       & then count the number of songs w/ artists
        
        total_songs =Song.all.select do |song|
            song.artist
        end
        total_songs.count   
    end
end