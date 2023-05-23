class Raum
  # TODO

  # gegeben
  def initialize()
    @gegenstaende = Array.new()
  end

  #gegeben
  def to_s()
    "R(#{@gegenstaende.join(" ")})"
  end

  #  TODO Iterator für Gegenstände
  def each(&b)
  end


  def <<(gegenstand)
    gegenstand.instance_of?(Gegenstand)
    @gegenstaende << gegenstand
  end

  def size()
    @gegenstaende.size
  end

  # TODO berechnet die Summe der Gewichte der enthaltenen Gegenstaende
  def kosten()
  end

  # TODO berechnet die Summe der Lebenspunkte der enthaltenen Gegestaende
  def wertigkeit()
  end

  # TODO
  def empty?()
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

  # TODO

  def initialize(n, m)
    @flaeche = Array.new(n) {Array.new(m)}
  end


  # gegeben
  def to_s()
    @flaeche.map() {|korridor| korridor.join("::")}.join("\n")
  end

  # TODO
  def each(&b)
  end

  # TODO setze_raum
  def setze_raum(i, j, raum)
  end

  # TODO raum_an_position
  def raum_an_position(i, j)
  end

  # TODO raum_position
  def raum_position(raum)
  end

  # TODO wegkosten
  def wegkosten(raum1, raum2)

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





