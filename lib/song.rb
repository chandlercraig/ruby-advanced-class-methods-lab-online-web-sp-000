class Song

  attr_accessor :name, :artist_name, :new_by_name

  @@all = []

  def self.all
    @@all
  end

  def self.new_by_name(song)
    song = self.new
    song.name = song
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

  def self.create_by_name(song)
    song = self.new
    song.name = name
    @@all << song
  end

end
