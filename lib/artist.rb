
require 'pry'

class Artist

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
    end

    def songs
        Song.all ##Song class is keeping track of the songs, not Artist class
    end

    def add_song(song)
        song.artist = self #song coming through the method to be set to the artist, define it as the particular artist
    end

    def add_song_by_name(song_name)
        Song.new(song_name).artist = self
    end

    def self.song_count
        Song.all.count
    end


end
