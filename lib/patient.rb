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
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, patient)
  end  
    
  def appointments  
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def artists
    appointments.map do |appointment|
      appointment.artist
    end  
  end
 
end