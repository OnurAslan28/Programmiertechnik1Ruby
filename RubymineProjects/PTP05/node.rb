# Onur Aslan
# Janat Haref


class Node
  include Enumerable
  attr_accessor :indices
  attr_reader :value

  def initialize(value)
    @value = value
    @indices = []
  end

  def leaf?
    @indices.empty?
  end

  def each(&b)

    if block_given?
      yield self #block.call nicht möglich, da Aufruf call nur einmal geht
      @indices.each {|e| e.each(&b)}
      self
    else
      enum_for(__method__)
    end

  end

  def <=> other
    self.value <=> other.value
  end

end
