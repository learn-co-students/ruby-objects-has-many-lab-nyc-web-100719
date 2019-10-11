class Song
  attr_reader :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end
  
  def self.all 
    return @@all
  end

  def artist=(artist)
    @artist = artist
  end
  
  def artist_name
    if (self.artist)
      return self.artist.name
    end 
  end
end