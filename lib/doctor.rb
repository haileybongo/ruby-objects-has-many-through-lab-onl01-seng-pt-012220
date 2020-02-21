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
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
  
  def songs 
    Appointment.all.select {|appt| appt.doctor == self}
  end
  
  def genres 
    genres = []
    self.songs.each do |song|
      genres << song.genre
    end
    genres
  end
  
end
      
    
    
    