require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file_name)
    
    artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
    artist.save 
    # song.artist = artist
    song = self.new(file_name.split(" - ")[1])
    artist.add_song(song)
    # artist = Artist.new(file_name.split(" - ")[0])
    # artist.save 
    # song.artist = artist.name 
    # artist.songs << song 
  end 
    
end 