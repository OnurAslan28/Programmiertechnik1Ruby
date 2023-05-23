class MiniTabCalc

  def initialize(ary2D)
      @tabelle =in_regular(ary2D)
    @n = @tabelle.length
    @m = @tabelle[0].length
    extend(3,3)
  end

  def extend(zeilen_anzahl, spalten_anzahl)
      for i in(0...zeilen_anzahl)
        @tabelle<< Array.new(@m,0)
      end

      for i in (0...@tabelle.length())
        @tabelle[i].concat(Array.new(spalten_anzahl,0))
      end
  end

  def zeilen_summe(zeilen_index)
    summe =0
    for i in(0...@m)
       summe += @tabelle[zeilen_index][i]
    end
    @tabelle[zeilen_index][@m] = summe
    return @tabelle[zeilen_index][@m]
  end

  def zeilen_mittelwert(zeilen_index)

    @tabelle[zeilen_index][@m+1] = zeilen_summe(zeilen_index).to_f()/@m
    return @tabelle[zeilen_index][@m+1]
  end

  def spalten_summe(spalten_index)
    summe = 0
    for i in (0...@n)
      summe += @tabelle[i][spalten_index]
    end
    @tabelle[@n][spalten_index] = summe
    return @tabelle[@n][spalten_index]
  end

  def spalten_mittelwert(spalten_index)
    @tabelle[@n+1][spalten_index] = spalten_summe(spalten_index).to_f()/@n
    return @tabelle[@n+1][spalten_index]
  end

  def mittelwert()
    summe = 0
    for i in (0...@n)
      summe += zeilen_mittelwert(i)
    end
    @tabelle[@n+1][@m+1] = summe.to_f()/@n
    return @tabelle[@n+1][@m+1]
  end


  def zeilen_median(zeilen_index)
    sorted = @tabelle[zeilen_index].sort
    sorted.delete(0)
    len = sorted.length

    if len % 2 != 0
      @tabelle[zeilen_index][@m + 2] = sorted[len / 2]
    else
      @tabelle[zeilen_index][@m + 2] = sorted[(len / 2) + 1] #Median rechts ---> + 2
    end
  end


  def spalten_median(spalten_index)

    sorted = Array.new
    for i in (0...@n)
      sorted << @tabelle[i][spalten_index]
    end
    sorted = sorted.sort
    sorted.delete(0)
    len = sorted.length

    if len % 2 != 0
      @tabelle[@n + 2][spalten_index] = sorted[len / 2]
    else
      @tabelle[@n + 2][spalten_index] = sorted[(len / 2) + 1] #Median rechts ---> + 2
    end
  end


  def in_regular(ary2D)
    kopie = kopiere(ary2D)

    #die größte Länge bestimmen
    max_laenge = 0
    ary2D.each() do |zeile|
      laenge = zeile.size()
      if (laenge > max_laenge)
        max_laenge = laenge
      end
    end
    for zeilen_index in (0...ary2D.size)
      zeilen_kopie = Array.new(max_laenge, 0)
      for spalten_index in (0...ary2D[zeilen_index].size())
        zeilen_kopie[spalten_index] = ary2D[zeilen_index][spalten_index]
      end
      kopie[zeilen_index] = zeilen_kopie
    end
    return kopie
  end

  def kopiere(ary2d)
    kopie = Array.new(ary2d.size()) {Array.new()}
    for zeilen_index in (0...ary2d.size())
      zeilen_kopie = Array.new(ary2d[zeilen_index].size(), 0)
      for spalten_index in (0...ary2d[zeilen_index].size())
        zeilen_kopie[spalten_index] = ary2d[zeilen_index][spalten_index]
      end
      # zeilenkopie in die Kopie an Position zeilen_index eintragen
      kopie[zeilen_index] = zeilen_kopie
    end
    return kopie
  end

  def show(total_space = 4)
    for zeilen_index in (0...@tabelle.size())
      for spalten_index in (0...@tabelle[zeilen_index].size())
        print "#{@tabelle[zeilen_index][spalten_index]}".ljust(total_space)
      end
      puts
    end
  end
end

def trenner(pre)
  puts "#{pre} #{"-"*30}"
end

trenner("Initialize")
ary2D = [[2], [2, 2, 2, 2], [2, 2, 2, 2], [2, 2]]
calc = MiniTabCalc.new(  ary2D   )
calc.show()

trenner("zeilen summe")
calc.zeilen_summe(0)
calc.zeilen_summe(2)
calc.show

trenner("zeilen mittelwert")

calc.zeilen_mittelwert(0)
calc.zeilen_mittelwert(1)
calc.zeilen_mittelwert(2)
calc.show()

trenner("spalten summe")
calc.spalten_summe(0)
calc.spalten_summe(2)
calc.show()

trenner("spalten mittel wert ")

calc.spalten_mittelwert(0)
calc.spalten_mittelwert(2)
calc.spalten_mittelwert(1)
calc.show()

trenner("mittelwert")
mwz= calc.mittelwert()
calc.show()

trenner("zeilenmedian")
calc.zeilen_median(4)
calc.show(7)

trenner("spaltenenmedian")
calc.spalten_median(1)
calc.show(7)