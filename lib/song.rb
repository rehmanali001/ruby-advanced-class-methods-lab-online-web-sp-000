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
    song = self.new
    song.save
    song
  end

  def self.new_by_name(string_name)
    string = self.new
    string.name = string_name
    string
  end
  
  def self.create_by_name(string_name)
    string = self.new
    string.name = string_name
    string.save
    string
  end
  
  def self.find_by_name(string_name)
   self.all.find do |title|
     title.name == string_name
  end
  end
end
