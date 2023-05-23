#Author: Janat Haref
#Author: Onur Aslan
class Buch
  attr_reader :autor, :titel

  def initialize(autor, titel)
    @autor = autor
    @titel = titel
  end

  def ==(other)


    return false if other.nil?
    return true if self.equal?(other)
    #return false if self.class != other.class

    return [@autor, @titel] == [other.autor, other.titel]

  end

  def eql?(other)
    return false if other.nil?
    return true if self.equal?(other)
    return false if self.class != other.class

    return [@autor, @titel].eql?([other.autor, other.titel])
  end

  def hash
    return [@autor, @titel].hash
  end

  def to_s()
    return "#{titel}(#{autor})"
  end
end


