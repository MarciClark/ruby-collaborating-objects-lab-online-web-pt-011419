class Song 
  
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_songs(song)
    @songs << song 
  end 
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist_name = file.split (" - ")[0]
    song = self.new(sing_name)
    song.artist_name = artist 
    song 
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end 
  
end 


