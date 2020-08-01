class Appointment
  attr_accessor :name, :artist, :genre
 
  @@all = []
 
  def initialize(date, patient, doctor)
    @name = name
    @artist= artist
    @genre = genre
    @@all << self
  end
 
  def self.all
    @@all
  end
 
end