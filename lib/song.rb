require_relative './artist.rb'

class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
    self.name = name
    @@all << self
end

def new(name)
    song = Song.new(new)
    @@all << song
end

def self.all
  @@all
end

def artist_name
  if self.artist.nil?
    nil
  else
    self.artist.name
  end
end

end
