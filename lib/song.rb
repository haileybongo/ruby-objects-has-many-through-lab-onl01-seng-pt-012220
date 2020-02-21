class Song 
  attr_accessor :name, :genre, :artist 
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist 
    @@all << self
  end
  
end