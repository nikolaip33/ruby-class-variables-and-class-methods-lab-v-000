class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist unless @@artists.include?(artist)
    @@genres << genre unless @@agenres.include?(genre)
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |genre, hsh| hsh[genre] += 1 }
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |genre, hsh| hsh[genre] += 1 }
  end

end
