class Author
    attr_accessor :name
    @@posts = []

    def initialize(name)
        @name = name
    end

    def posts
        @@posts = Post.all.select do |post| 
            post.author.name == self.name
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        @@posts.length
    end
end