require 'pry'

class Artist
  attr_reader :name
  
  def initialize(name)
    @name = name 
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs 
    Song.all.select do |song|
      song.artist 
    end
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end
  
  def self.song_count 
    return Song.all.count
  end
end