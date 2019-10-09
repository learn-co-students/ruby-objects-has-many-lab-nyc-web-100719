class Post 
    attr_accessor :title, :author
    @@all=[]
    def initialize(title)
        @title=title
        save
    end
    def save
        @@all << self
    end
    def author_name
        if self.author != nil
            self.author.name
        else
            return nil
        end 

    end
    def self.all
        @@all
    end
end 