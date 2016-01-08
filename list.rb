class List
  attr_reader :songs, :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end
  
  def play
    @songs.each do |song|
      puts song.lyrics
    end
  end
  
  def shuffle
    @songs.shuffle.each do |song|
      puts song.lyrics
    end  
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