# 10 Pkt
class Kasse

  include Enumerable
  
  def initialize
    @rechnungen = []
  end
  
  # Gegeben
  def <<(rechnung)
    @rechnungen << rechnung
    return self
  end



  def each(&b)
      @rechnungen.each(&b)
  end

  # Gegeben
  def kassen_sturz()
    self.inject(0) {|akku,rechnung| akku + rechnung.rechnungs_betrag()}
  end

  # Gegeben
  def to_s()
     return "Kasse:\n #{@rechnungen.join("\n ")}\n Gesamt:#{kassen_sturz()}"
  end

end

# 15 Pkt
class Rechnung
  # Gegeben
  attr_reader :positionen,:nr
  protected :positionen
  include Enumerable
  include Comparable
  @@number = 0

  def self.reset()
    if self.class_variables().size() > 0
      var = class_variables[0]
      self.class_variable_set(var,0)
    end
  end

  def initialize
    @positionen = []
    @nr = @@number
    @@number += 1
  end

  def each(&b)
    @positionen.each(&b)
  end

  def rechnungs_betrag()
    @positionen.inject(0) {|sum, e| sum +  e.preis}
  end

  def count()
    @positionen.inject(0) {|sum, e| sum + e.anzahl}
  end

  def <=>(other)

    self.rechnungs_betrag <=> other.rechnungs_betrag

  end


  # Gegeben
  def << pos
    @positionen << pos
    return self
  end
  def to_s()
    return "R#{@nr}:(#{rechnungs_betrag()}):#{count}/#{@positionen.size}:#{@positionen.join(",")}"
  end
end

# 5 Pkt
class Position
  include Comparable
  # Gegeben
  attr_reader :preis,:produkt,:anzahl





  def initialize(produkt,anzahl,preis)
    @preis = preis * anzahl
    @produkt = produkt
    @anzahl = anzahl
  end




  def <=>(other)
    [@preis,@produkt] <=> [other.preis,other.produkt]
  end

  
  def to_s()
    return "#{@produkt}(#{@anzahl}):#{preis}"
  end
end

