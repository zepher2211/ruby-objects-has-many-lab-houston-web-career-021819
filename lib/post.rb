require_relative './author.rb'
require 'pry'

class Post

attr_accessor :title, :author, :name

@@all = []

def initialize(name)
    self.title = name
    @@all << self
end

def new(name)
    song = Post.new(new)
    @@all << song
end

def self.all
    @@all
end

def author_name
  if self.author.nil?
    nil
  else
    self.author.name
  end
end


end
