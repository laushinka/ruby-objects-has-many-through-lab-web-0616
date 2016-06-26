class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

# Takes argument of a song and adds that song to the artist's collection of songs
# Should also tell the song that it belongs to that artist.
  def add_song(song)
    @songs << song
    song.artist = self
  end

# iterates over that artist's songs and collects the genre of each song
  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end
