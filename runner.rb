require_relative "song"
require_relative "list"

# Create playlist
playlist = List.new("ItsMoneyBaby")

# Create songs and add them to the list
playlist.add_song(Song.new("Levels", "Avicii", 200, "Ooooo sometimes I get a good feeling..."))
playlist.add_song(Song.new("Poison", "Martin Garrix", 248, "Beep boop boop boop beep beep"))
playlist.add_song(Song.new("Animals", "Martin Garrix", 192, "We are f*ckin animals.."))

playlist.songs[0].play_song
playlist.songs[0].friendly_duration

playlist.play
puts "\n"
playlist.shuffle
playlist.duration