class Fachbereich
  include Enumerable

  attr_reader :name, :media

  def initialize(name)
    @name = name
    @media = []
  end

  def add(other)
    @media << (other)
  end

  def ==(other)
    [@name, @media] == [other.name, other.media]
  end

  def each(&b)
      @media.each(&b)
  end

  def <=>(other)
    [@name, @media] <=> [other.name, other.media]
  end

  def to_s
    "#{@name}"
  end

end

