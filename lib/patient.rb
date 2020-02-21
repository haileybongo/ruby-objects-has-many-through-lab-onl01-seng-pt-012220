class Patient 
  
  attr_accessor :name 
  
  @@all = []
  
    def initialize(name)
      @name = name 
      @@all << self
    end
    
    def self.all
      @@all
    end
    
  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
  
    
    def songs 
       Song.all.select {|song| song.genre == self}
    end
    
    def artists
      artists = []
      self.songs.each do |song|
      artists << song.artist
     end
      artists
     end
     
   end