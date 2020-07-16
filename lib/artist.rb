class Artist

  @@all=Array.new

  def initialize(name)
    @name=name
    test=false
    @@all.each do |s|
      if s.name==name
        test=true
        break
      end
    end
    if test==false
      @@all<<self
    end
  end

  attr_accessor name


  def self.all
    @@all
  end

  def songs
    arr=Song.all
    arr.each do |s|
      if s.artist==self
        s
      end
    end
  end

  def self.find_or_create_by_name(name)
    @@all.each do |a|
      if a.name==name
        return a
      end
    end
    @name=name
    return self

  end
end
