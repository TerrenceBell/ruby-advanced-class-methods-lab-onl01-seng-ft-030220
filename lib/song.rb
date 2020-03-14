class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
 def self.create 
   song = self.new
   @@all << song
   song
 end
 def self.new_by_name(title)
song = self.new 
song.name = title
song
end
def self.create_by_name(title)
  song = self.new 
  song.name = title 
  @@all << song 
  song
end 
def self.find_by_name(title)
  self.all.find{|song| song.name == title}
end
end
