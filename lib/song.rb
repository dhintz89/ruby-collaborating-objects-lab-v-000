class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name)
  end
  
  def self.new_by_filename(filename)
    partist, name = filename.split(" - ")
    song = self.new(name)
    artist_name=(partist)
    self.artist.add_song(self)
  end
  
end