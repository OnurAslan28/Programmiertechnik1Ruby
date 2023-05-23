class Liste

  include Enumerable

  attr_reader :zahl
  attr_writer :p , :n

  def initialize(zahl, p= nil, n = nil)
    @zahl = zahl
    @p = p
    @n = n
  end

  def each(&b)
    if block_given?
      yield self
      if @n != nil
        @n.each(&b)
      end
      self
    else
      enum_for(__method__)
    end
  end

  def add(other)
    tmp = @n
    @n = other
    other.n = tmp
    other.p = self
  end

  def remove
    tmp_n = @n
    tmp_p = @p
    @n.p = tmp_p
    @p.n = tmp_n
  end

  def <=>(other)
    [@zahl] <=> [other.zahl]
  end

  def to_s
    "#{@zahl}"
  end


end

liste = Liste.new(1)
knoten1 = Liste.new(2)
knoten2 = Liste.new(4)
knoten3 = Liste.new(6)
knoten4 = Liste.new(8)

liste.add(knoten1)
knoten1.add(knoten2)
knoten2.add(knoten3)
knoten3.add(knoten4)


liste.each do |e|

  puts e
end

knoten2.add(Liste.new(5))

puts "NACH ADD UND REMOVE****" *5
knoten2.remove

liste.each do |e|

  puts e
end
#knoten2.add(Liste.new(5))
#




