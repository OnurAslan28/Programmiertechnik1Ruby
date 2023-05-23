

class Knoten

  include Enumerable


  attr_reader :vorname, :nachname, :alter
  private_class_method :new

  @@schalter = true

  def initialize(vorname,nachname,alter,schild = nil)
    @vorname = vorname
    @nachname = nachname
    @alter = alter
    @schild = schild

  end

  def Knoten.create(vorname, nachname, alter)

    if @@schalter == true
    @@schalter = false
    return new(vorname, nachname, alter)
    else
    raise ArgumentError, "Es gibt bereits ein Root"
    end

  end

   def each(&b)
    if block_given?
        yield self
        if @schild != nil
          @schild.each(&b)
      end
      self
    else
      enum_for(__method__)
    end
  end

  def <=>(other)
    [@vorname, @nachname, @alter] <=> [other.vorname, other.nachname, other.alter]
  end

  def to_s

    "#{@vorname} \t  #{@nachname}  \t  #{@alter}"
    end
end


root = Knoten.create("onur","aslan", "24")
root1 = Knoten.create("a", "b", 34)

puts root

