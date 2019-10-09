class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if artist
            self.artist.name
        else
        end
    end
    
end