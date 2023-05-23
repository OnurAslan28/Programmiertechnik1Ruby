class Punkt

  attr_reader :x,:y
  def initialize(x,y)
    @x = x
    @y = y
  end

  def hash()
    return x.hash()
  end

  def eql?(other)
    return true if self.equal?(other)
    return false if self.class != other.class
    return [@x,@y].eql?([other.x,other.y])
  end

  def to_s()
    return "[#{x},#{y}]"
  end
end


p11 = Punkt.new(1,1)
p21 = Punkt.new(2,1)
p31 = Punkt.new(3,1)
p15 = Punkt.new(1,5)
p35 = Punkt.new(3,5)

h[p11] = "baum"
h[p21] = "katze"
h[p31] = "maus"
h[p15] = "haus"
h[p35]  = "sonne"
# Zeichnen Sie die interne Tabelle des Hashes