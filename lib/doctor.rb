class Doctor 
  
  attr_accessor :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(name,genre)
    Song.new(name, self, genre)
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def genres 
    genres = []
    self.songs.each do |song|
      genres << song.genre
    end
    genres
  end
  
end
      
    
    
    