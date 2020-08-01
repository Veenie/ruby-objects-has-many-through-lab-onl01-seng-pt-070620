class Doctor
  attr_accessor :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def new_appointment(name, genre)
    Appointment.new(name, self, genre)
  end  
    
  def appointments  
    appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def genres
    appointments.map do |appointment|
      appointment.genre
    end  
  end
 
end