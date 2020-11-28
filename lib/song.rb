class Song

  attr_accessor :name, :artist_name, :new_by_name

  @@all = []

  def self.all
    @@all
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

  def self.create_by_name(song_name)
    song = self.new
    song.name = song_name
    @@all << song
    song
  end

  def self.find_by_name(song_name)
    self.all.each{|song| return song if song == song_name}
  end

end
