require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    binding.pry
    new_artist = Artist.new(file_name.split(" - ")[0])
    song.artist = new_artist 
    new_artist.songs << song 
    new_artist.save 
  end 
end 