class Song
  attr_accessor :name, :artist_name

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    person = self.new
    self.all << person
    person
  end

  def self.new_by_name(name)
    song = self.new
    @name = name
    song.name = name
  end

end
