class Artist 
  
  attr_accessor :name, :songname, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    Song.new(name, genre, self)
    
    
    
    
    