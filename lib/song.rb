require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file_name)
    artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
    artist.songs = file_name.split(" - ")[1] 
  end 
end 