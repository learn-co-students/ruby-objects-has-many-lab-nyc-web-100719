class Author
attr_accessor :name
@@posts = [ ]
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

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        add_post(post)
    end

    def self.post_count
        total_posts= Post.all.select do |post|
            post.author
        end
        total_posts.count
    end
end