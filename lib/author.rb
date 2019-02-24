require_relative './post.rb'

class Author

attr_accessor :name, :posts, :author, :title

def initialize(name)
    @name = name
    @posts = []
end

@@posts = []

def add_post(post)
 self.posts << post
 @@posts << post
 post.author = self
end

def add_post_by_title(post)
    newpost = Post.new(post)
    self.posts << newpost
    @@posts << newpost
    newpost.author = self
end

def self.post_count
  @@posts.length
end


end
