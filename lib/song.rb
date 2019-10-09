class Song
    attr_accessor :name,:artist,:genre
    @@all=[]
    def initialize(name)
        @name=name
        save
    end
    def save
        @@all << self
    end
    def artist_name
        if self.artist != nil
            self.artist.name
        else 
            return nil
        end 
    end
    def self.all
        @@all
    end 

end 