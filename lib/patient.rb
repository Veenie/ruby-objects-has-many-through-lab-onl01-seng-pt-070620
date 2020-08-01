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
  
  def new_song(name, patient)
    Song.new(name, self, patient)
  end  
    
  def songs  
    Song.all.select do |song|
      song.patient == self
    end
  end
  
  def artists
    songs.map do |song|
      song.artist
    end  
  end
 
end