# Author: Janat Haref
# Author: Onur Aslan


class Kuenstler
  #attr_reader :name, :gruppe
  def initialize(name,gruppe)
    @name = name
    @gruppe = gruppe
  end

  def to_s
      @name+ "\n" + "Band: \t\t" + @gruppe
  end
end


