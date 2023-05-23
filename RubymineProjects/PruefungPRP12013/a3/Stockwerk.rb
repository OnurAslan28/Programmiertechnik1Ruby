class Stockwerk
  def initialize(bez)
    @bez = bez
    @raeume = []
  end

  def <<(ein_raum)
    @raeume << ein_raum
  end
  
  def to_s()
    return "#{@bez} [#{@raeume.join(",")}]"
  end
  
  # TODO 
  def anordnen_nach_y_x()
      @raeume.sort()
  end

  # TODO
  def kleinster_raum()
    @raeume.min_by(){|raum| raum.flaeche()}
  end

  # TODO
  def raeume_mit_flaeche(flaeche)
    @raeume.find_all() {|raum| raum.flaeche()==flaeche}
  end

  # TODO
  def raum_mit_massen?(raum,toleranz)
    return @raeume.any?(){|raum2|
        (raum.breite-raum2.breite).abs() <= toleranz &&
         (raum.hoehe()-raum2.hoehe()).abs() <= toleranz
    }
  end

  # TODO
  def minimal_umgebendes_rechteck()
      min_x = @raume.min_by(){|raum| raum.min_x()}
      max_x = @raume.max_by(){|raum| raum.max_x()}
      min_y = @raume.min_by(){|raum| raum.min_y()}
      max_y = @raume.max_by(){|raum| raum.max_y()}

    return Rechteck.new(Punkt.new(min_x,min_y), max_x-min_x, max_y-min_y)

  end

  # TODO
  def gesamt_flaeche()
    @raeume.inject(0) {|flaeche,raum| flaeche+ raum.flaeche()}
  end
end

class  Raum
  def initialize(bez,geom)
    @bez = bez
    @geom = geom
  end

  def flaeche()
    @geom.flaechen_inhalt()
  end

  def min_x()
    return @geom.min_x()
  end

  def max_x()
    return @geom.max_x
  end

  def min_y()
    return @geom.min_y()
  end

  def max_y()
    return @geom.max_y()
  end

  def to_s()
    return "(#{@bez}:#{@geom})"
  end

  def breite()
    return @geom.breite()
  end

  def hoehe()
    return @geom.hoehe()
  end
  
  # TODO Beitrag für Aufgabenteil d. 
  def <=> (other)
    return [min_y,min_x] <=> [other.min_y,other.min_x]
  end
end

class Rechteck
  attr_reader :breite,:hoehe,:pos
  def initialize(pos,breite,hoehe)
    @pos = pos
    @hoehe = hoehe
    @breite = breite
  end

  def min_x()
    return @pos.x()
  end

  def max_x()
    return @pos.x+ @breite
  end

  def min_y()
    return @pos.y
  end

  def max_y()
    return @pos.y + @hoehe
  end

  def flaechen_inhalt()
    return @hoehe*@breite
  end

  def == (other)
    return true if self.equal?(other)
    return other.respond_to?(:pos) && other.respond_to?(:hoehe) && other.respond_to?(:breite) && [@pos,@hoehe,@breite] == [other.pos,other.hoehe,other.breite]
  end

  def to_s()
    return "#{@pos},H:#{@hoehe},B:#@breite"
  end
end

class Punkt
  attr_reader :x,:y
  def initialize(x,y)
    @x = x
    @y = y
  end

  def to_s()
    return "(x:#{@x},y:#@y)"
  end

  def == (other)
    return true if self.equal?(other)
    return other.respond_to?(:x) && other.respond_to?(:y) && [@x,@y] == [other.x,other.y]
  end
end