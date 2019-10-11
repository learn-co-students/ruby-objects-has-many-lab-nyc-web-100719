require "pry"

class Artist
    attr_accessor :name, :song

    def initialize(name)
        @name = name
        @song = song
    end 

    def songs  
        @songs = Song.all   #you set it equal to Song.all because you'e pulling from the Song class is another file?
    end

    def add_song(song)
        #creates a new song with (song) argument above
        song.artist = self #associates the song and artist 
    end 
  
    def add_song_by_name(song)
        new_song = Song.new(song)
        add_song(new_song)
    end

    def self.song_count
        Song.all.count 
    end

end
