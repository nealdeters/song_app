class List
  attr_reader :songs, :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end
  
  def play(songs = @songs)
    # @songs.each do |song|
    #   puts song.lyrics
    # end

    #@songs.each {|song| puts song.lyrics}
    
    songs.each {|song| puts song.lyrics}
  end
  
  def shuffle
    # @songs.shuffle.each do |song|
    #   puts song.lyrics
    # end  

    #@songs.shuffle.each {|song| puts song.lyrics}

    shuffled_list = @songs.shuffle
    play(shuffled_list)
  end
  
  def duration
    sum = 0
    @songs.each do |song|
      sum += song.duration
    end

    minutes = sum / 60
    seconds = sum % 60
    #puts "#{(sum / 60).to_i}" + ":" "#{(sum % 60).to_i}"
    puts "#{minutes}:#{seconds}"
  end

end