class Bibliothek
  include Comparable
  attr_reader :fachbereiche

  def initialize(name)
    @name = name
    @fachbereiche = []
  end

  def add(other)
    @fachbereiche << other
  end

  def each(&b)
    @fachbereiche.each(&b)
  end

  def <=> other
    @fachbereiche <=> other.fachbereiche
  end
end