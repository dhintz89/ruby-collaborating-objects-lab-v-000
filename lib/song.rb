class Song
  attr_accessor :name, :artist_name
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name)
  end
  
  def self.new_by_filename(filename)
    artist, name = filename.split(" - ")
    song = self.new(name)
    artist_name=(artist)
    self.artist.add_song(self)
  end
  
end