require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file_name)
    artist = Artist.new(file_name.split(" - ")[0])
    artist.save 
    song = self.new(file_name.split(" - ")[1])
    song.artist = artist.name 
    artist.songs << song 
    binding.pry
  
  end 
    
end 