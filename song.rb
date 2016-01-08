class Song
  attr_reader  :name, :artist, :duration, :lyrics

  def initialize(name, artist, duration, lyrics)
    @name = name
    @artist = artist
    @duration = duration #duration in seconds
    @lyrics = lyrics
  end
  
  def play_song
    #`say #{lyrics}`
    puts "#{@lyrics}"
  end
  
  def friendly_duration
    minutes = @duration / 60
    seconds = @duration % 60
    #puts "#{(@duration / 60).to_i}" + ":" "#{(@duration % 60).to_i}"  
    puts "#{minutes}:#{seconds}"   
  end
  
end