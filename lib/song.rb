require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file_name)
    artist = Artist.new(file_name.split(" - ")[0])
    artist.songs << self.new(file_name.split(" - ")[1])
    song = artist.songs.name 
    binding.pry
    # artist.save 
    # song = self.new(file_name.split(" - ")[1])
    # artist.songs << song.name 
    # song.artist = artist
    # artist = Artist.new(file_name.split(" - ")[0])
    # song.artist = artist.name 
    # artist.songs << song.name
    # artist.save
  end 
end 