require "./object"

module EinheitenGroesse

def initialize(value = 0)
  @value = value
end


def umrechnen_in(*ziel_groesse_typ)
  abstract()
end

def common_supertype
  abstract()
end


def type_check(other)
  raise ArgumentError, "#{other} nicht vom Typ #{common_supertype()}" if !other.is_a?(common_supertype())
end

  def faktor
    abstract()
  end

def symbol
  abstract()
 end

def in_basis()

  if self.class == Millimeter
    @value * faktor
  else
    @value * faktor * 1.0
  end
end

def von_basis(wert)
  abstract()
end

def +(other)
  type_check(other)
  von_basis(in_basis + other.in_basis)
end

def -(other)
  type_check(other)
  von_basis(in_basis - other.in_basis)
end

def *(num)
  raise ArgumentError, "Fehler in #{__method__}: Argument nicht vom Typ Numeric" if !num.kind_of? Numeric
  von_basis(in_basis  * num)
end

def /(num)
  raise ArgumentError,"Fehler in #{__method__}:  Division durch Null" if num == 0
  raise ArgumentError, "Fehler in #{__method__}: Argument nicht vom Typ Numeric" if !num.kind_of? Numeric
  von_basis(in_basis / num)
end

def umrechnen_in(*ziel_groesse_typ)
  abstract()
end

def to_s()
  "#{@value}" + symbol

end

protected
def value()
  @value
end

end
