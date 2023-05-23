# 25 Pkt fuer Loesung Aufgabenteil A
# 5 Pkt fuer Loesung Aufgabenteil B

class Kasse

  # Gegeben
  attr_reader :rechnungen
  protected :rechnungen

  def initialize()
    @rechnungen = []
  end

  def clone
    cp = Kasse.new
    new_rechnung = @rechnungen.map do |e|
      e.clone
    end

    new_rechnung.each do |e|
      cp << e
    end
    cp
  end

  def ==(other)
    return false if other.nil?
    return true if self.equal?(other)
    return false if !other.is_a?(Kasse)
    [@rechnungen] == [other.rechnungen]
  end

  def eql?(other)
    return false if other.nil?
    return true if self.equal?(other)
    return false if !other.is_a?(Kasse)
    [@rechnungen].eql? [other.rechnungen]
  end

  def hash
    @rechnungen.hash
  end

  # Gegeben
  def <<(rechnung)
    @rechnungen << rechnung
    return self
  end

  def size()
    return @rechnungen.size()
  end

  def to_s()
    return "Kasse:\n #{@rechnungen.join("\n ")}}"
  end
end

class Rechnung
  # Gegeben
  attr_reader :positionen,:nr
  protected :positionen

  def initialize(nr)
    @positionen = []
    @nr = nr
  end

  # Gegeben
  def <<(pos)
    @positionen << pos
    return self
  end

  def clone
    new_pos = @positionen.map do
        |e| e.clone
    end
      cp = Rechnung.new(@nr.clone)
    new_pos.each do |e|
      cp << e
    end
    cp
    end

  def ==(other)
    return false if other.nil?
    return true if self.equal?(other)
    return false if !other.is_a?(Rechnung)
    [@positionen,@nr] == [other.positionen,other.nr]
  end

  def eql?(other)
    return false if other.nil?
    return true if self.equal?(other)
    return false if !other.is_a?(Rechnung)
    [@positionen,@nr].eql? [other.positionen,other.nr]
  end

  def hash
    [@positionen,@nr].hash
  end

  def to_s(abbr=false)
    if abbr
      return "R#{@nr}"
    end
    return "R#{@nr}:#{@positionen.join(",")}"
  end
end

# 5 Pkt
class Position

  attr_reader :preis


  # Gegeben
  def produkt
    @produkt.clone()
  end

  def clone
    cp = Position.new(@produkt.clone, @preis.clone)
    cp
  end

  def initialize(produkt,preis)
    @produkt = produkt
    @preis = preis
  end

  def ==(other)
    return false if other.nil?
    return true if self.equal?(other)
    return false if !other.is_a?(Position)
    [@produkt,@preis] == [other.produkt,other.preis]
  end

  def eql?(other)
    return false if other.nil?
    return true if self.equal?(other)
    return false if !other.is_a?(Position)
    [@produkt,@preis].eql? [other.produkt,other.preis]
  end

  def hash
    [@produkt,@preis].hash
  end

  def to_s()
    return "#{@produkt}:#{preis}"
  end
end

