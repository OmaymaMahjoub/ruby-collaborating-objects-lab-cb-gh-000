class Artist

  def initialize (name)
    @name=name
  end

  def name=(name)
    @name=name
  end

  def self.all
    arr=Song.all
    arr2=arr.collect do |s|
      s.artist.name
    end
    arr3=Array.new
    arr2.each do |a|
      if arr2.count(a)==1
        arr3<<a
      else
        if arr3.count(a)==0
          arr3<<a
        end
      end
    end
    return arr3
  end



end
