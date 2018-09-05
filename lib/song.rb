class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
  end
  
  def self.new_by_filename(filename)

    song = self.new(name)
    song.artist_name=(artist)
    song.artist.add_song(self)
  end
  
end