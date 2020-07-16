class Song

  attr_accessor name

  @@all=Array.new

  def initialize (name)
    @name=name
    @@all<<self
  end

  def name=(name)
    @name=name
  end

  def artist=(artist)
    @artist=artist
  end

  def self.all
    @@all
  end

  


end
