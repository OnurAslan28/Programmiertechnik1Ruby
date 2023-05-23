class Medium
  include Comparable

  attr_reader :titel, :kuenstler, :art , :index, :nummer

  @@nummer = 1
  def initialize(titel,kuenstler,art)
    @titel = titel
    @kuenstler = kuenstler
    @art = art
    @index = @@nummer
    @@nummer += 1

  end

  def ==(other)
    [@titel,@kuenstler,@art] == [other.titel,other.kuenstler,other.art]
  end

  def <=>(other)
    [@titel,@kuenstler] <=> [other.titel, other.kuenstler]
  end


  def to_s
    "#{@titel}  #{@kuenstler}  #{@art}"
  end


end



