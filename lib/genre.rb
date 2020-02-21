class Genre 
  
  attr_accessor :name 
  
  @@all = []
  
    def initialize(name)
      @name = name 
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def songs 
       Song.all.select {|song| song.genre == self}
    end
    
    def artists
      artists = []
       self.song.each do |song|
        artists << song.artist
     end
      artists
     end