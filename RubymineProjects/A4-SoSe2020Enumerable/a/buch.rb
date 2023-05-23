class Buch
  attr_reader :autor, :titel

  def initialize(autor, titel)
    @autor = autor
    @titel = titel
  end

  def ==(other)
    return [@autor,@titel]==[other.autor, other.titel]
  end

  def eql?(other)
    return [@autor,@titel].eql?([other.autor, other.titel])
  end

  def to_s()
    return "#{titel}(#{autor})"
  end
end


