require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    song.artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
    # new_artist.songs << song 
    # new_artist
  end 
end 