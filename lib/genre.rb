class Genre

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Song.all.collect do |song|
      song.artist
    end
  end
end
