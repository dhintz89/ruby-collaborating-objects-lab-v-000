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
  
  def self.find_or_create_by_name(name)
    if @@all.select {|name| name == nil}
      artist = self.new(name)
    else
      @@all.select{|name| name == nil}
    end
  end
  
  def print_songs
    @songs
  end
  
  def self.all
    @@all
  end
  
end