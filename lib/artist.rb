class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(artist_name)
    @@all.each {|val| val.name == artist_name ? val : artist = self.new(artist_name)}
  end
  
  def print_songs
    @songs
  end
  
  def self.all
    @@all
  end
  
end