class Artist 
  
  attr_accessor :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    Song.new(name, genre, self)
  end
  
  def songs 
    Song.all.select {|song| 
    
    
    
    