# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode

# define Song class
  #initialize playlist with initial songs
  #play: display title of song and band

# define Playlist class
  #initialize playlist with initial songs
  #add: for some number of input songs, add additional songs to playlist
  #num_of_tracks: return number of songs in playlist
  #remove: remove song from playlist
  #includes?: return whether the playlist contains a particular song based on a search
  #play_all: for all songs in playlist, play them

# Initial Solution

class Song
  def initialize(title, band)
    @title = title
    @band = band
  end

  def play
    print "Playing " + @title + " by " + @band + "\n"
  end
end

class Playlist
  def initialize(*songs)
    @songs = songs
  end

  def add(*songs)
    songs.each { |song|
      @songs << song
    }
  end

  def num_of_tracks
    return @songs.length
  end

  def remove(song)
    @songs.delete(song)
  end

  def includes?(song)
    return @songs.include?(song)
  end

  def play_all
    @songs.each { |song|
      song.play
    }
  end
end


# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
# What concepts did you review in this challenge?
# Creating ruby classes and methods... Also splat arguments.


# What is still confusing to you about Ruby?
# Nothing

# What are you going to study to get more prepared for Phase 1?
# Do some more Ruby challenges.