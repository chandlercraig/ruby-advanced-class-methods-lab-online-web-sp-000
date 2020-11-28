class Song
  attr_accessor :name, :artist_name

  @@all = []

  def self.all
    @@all
  end

  def self.new_by_name(name)
    song = self.new
    @name = name
    song.name = name
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

end
