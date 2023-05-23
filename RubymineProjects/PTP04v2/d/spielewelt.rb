#Author: Janat Haref
#Author: Onur Aslan


class Raum
  include Enumerable
  # gegeben
  def initialize()
    @gegenstaende = Array.new()
  end

  #gegeben
  def to_s()
    "R(#{@gegenstaende.join(" ")})"
  end



  def each(&b)
    @gegenstaende.each(&b)
  end

  def <<(gegenstand)
    @gegenstaende << gegenstand
    self
  end

  def size()
    @gegenstaende.size
  end

  def kosten()
    @gegenstaende.inject(0) { |sum,gegenstand | sum + gegenstand.gewicht  }
  end


  def wertigkeit()
    @gegenstaende.inject(0) {|sum,gegenstand|sum + gegenstand.lebenspunkte }
  end


  def empty?()
    @gegenstaende.empty?
  end

end

class Gegenstand
  attr_reader :gewicht, :lebenspunkte

  def initialize(gewicht, lebenspunkte)
    @gewicht = gewicht
    @lebenspunkte = lebenspunkte
  end

  def to_s()
    "G(#{gewicht},#{lebenspunkte})"
  end
end

class Welt

  include Enumerable

  def initialize(n, m)
    @flaeche = Array.new(n) {Array.new(m)}
  end

  # gegeben
  def to_s()
    @flaeche.map() {|korridor| korridor.join("::")}.join("\n")
  end


  def each(&b)
    @flaeche.each do |ary1D|
      ary1D.each(&b)
    end
    end


  def setze_raum(i, j, raum)
    @flaeche[i][j] = raum
  end


  def raum_an_position(i, j)
    @flaeche[i][j]
  end


  def raum_position(raum)
    x = 0
    @flaeche.each do |e|
      if e.include?(raum)
      x = @flaeche.index(e)
      end
    end

    y = @flaeche[x].index(raum)

    [x,y]

  end


  def wegkosten(raum1, raum2)
    ary = [raum_position(raum1)[0] - raum_position(raum2)[0], raum_position(raum1)[1] - raum_position(raum2)[1]]
    ary.map.sum { |e| e < 0 ? e * -1 : e}
  end

end

class Spieler
  # gegeben
  def initialize(name, lebenspunkte, tragkraft, aktueller_raum, welt)
    @name = name
    @lebenspunkte = lebenspunkte
    @tragkraft = tragkraft
    @aktueller_raum = aktueller_raum
    @welt = welt
  end

  # gegeben
  def to_s()
    "Sp(#@name,#@lebenspunkte,#@tragkraft,#@aktueller_raum)"
  end

  # TODO erreichbare Ziele

  def erreichbare_ziele()

  end

  # TODO optimales Ziel
  def optimales_ziel()

  end

end

