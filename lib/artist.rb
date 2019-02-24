require_relative './song.rb'

class Artist

attr_accessor :name, :songs, :artist

def initialize(name)
    self.name = name
    @songs = []
end

@@songs = []

def add_song(song)
 self.songs << song
 @@songs << song
 song.artist = self
end

def add_song_by_name(song)
    newsong = Song.new(song)
    self.songs << newsong
    @@songs << newsong
    newsong.artist = self
end

def self.song_count
  @@songs.length
end



end
