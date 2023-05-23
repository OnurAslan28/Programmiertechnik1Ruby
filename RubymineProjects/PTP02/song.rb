# Author: Janat Haref
# Author: Onur Aslan


class Song

  def initialize(name,kuenstler)
    @name = name
    @kuenstler = kuenstler
  end

  def to_s
    "Name: \t\t#{@name}\nKünstler: \t#{@kuenstler}"
   # "Name: \t\t" + @name +"\n" + "Künstler: \t" + @kuenstler.to_s
  end
end