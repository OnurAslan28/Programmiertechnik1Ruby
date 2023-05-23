#Author: Janat Haref
#Author: Onur Aslan


# 1. Gegeben die folgende Formel für die harmonische Reihe: ∑_(i=1)^n▒1/i. Schreiben Sie eine Methode,
# die die Summe für ein vorgegebenes n berechnet. Verwenden Sie ein Intervall und die Methode inject.
#
def harmonic_series(n)
  (1..n).inject { |sum, n| sum + 1.fdiv(n)}#1.0/n

end

# 2. Schreiben Sie eine Methode, die für ein Array von Zahlen die Funktion f(x)= √x berechnet.
# Das Ergebnis soll ein Array von 2-elementigen Arrays sein, dessen 1’tes Element x und dessen 2’tes Element f(x) ist.
# Bsp.:

def sqrt(ary)

  #tmp = Array.new(2)
  return ary.collect do |e| [e,Integer.sqrt(e)]
  #tmp[0] = e
  #tmp[1] = Integer.sqrt(e)
  # tmp.clone
  end

    #erg_ary

end

# 3. Schreiben Sie eine Methode, die für beliebige 2D-Arrays und eine beliebige obere Grenze x
# die 1D-Arrays bestimmt, für die die Summe der Elemente > x wird. Das Ergebnis ist ein 2D-Array,
# das nur die Teil-Arrays enthält, deren Elemente die Bedingung erfüllen. Lösen Sie die Aufgabe
# mit geeigneten Methoden von Enumerable (Verwendung von each ist nicht erlaubt).
#
def rowsum_greater(ary2D, x)
  return ary2D.find_all do |ary1D|
    ary1D.sum > x
  end

end

# 4. Schreiben Sie eine Methode, die einen Hash absteigend nach Werten sortiert. Sie dürfen davon ausgehen,
# dass die Werte vergleichbar sind.

def sort_down_by_value(a_hash)

  a_hash.sort do |paar1, paar2|
    paar2[1] <=> paar1[1]
  end
end


# 5. Bestimmen Sie für einen Hash den Schlüssel, für den der Wert maximal ist. Sie dürfen davon ausgehen,
# dass die Werte vergleichbar sind.

def key_with_max_value(a_hash)

  erg = a_hash.max_by do |k,v|
    v
  end

end

# 6.	Schreiben Sie eine Methode, die einen Hash, dessen Werte Arrays von Zahlen sind,
# nach der Summe der Elemente des Wertes sortiert.

def sort_by_accumulated_value(a_hash)

  a_hash.sort { |paar1, paar2| paar1[1].sum <=> paar2[1].sum}

end

# 7.	Schreiben Sie eine Methode, die ein regelmäßiges 2D-Array von Zahlen, dessen Zeilen mindestens
# die Länge 3 haben, zuerst nach dem 3’ten, dann nach dem 2’ten und dann nach dem 1’ten Element sortiert.
# Sortieren nach dem 2’ten Element, darf die Reihenfolge des Sortierens nach dem 3’ten Element
# nicht zerstören. Das Gleiche gilt für das Sortieren nach dem 1’ten Element.
# Das Ergebnis ist das sortierte 2D-Array.

def three_two_one_sort(ary2D)

  return ary2D.sort_by do |zeile|
    [zeile[2], zeile[1], zeile[0]]
  end
end

# 8.(*) Schreiben Sie eine Methode, die für ein beliebiges 2D-Array unter Verwendung von map oder collect
# eine tiefe Kopie erzeugt.

def deep_copy(ary2D)

end

# 9. Schreiben Sie eine Methode, die für ein 1D-Array von Zahlen prüft, ob es ein Element gibt,
# das  > einem gegebenen x ist.

def has_elem_greater(ary1D, x)

#  ary1D.each { |e| e > x ? (return true) : 1}
#  false

ary1D.any? { |e| e > x }

end
# 10.	Schreiben Sie eine Methode, die für ein 2D-Array von Zahlen prüft, ob es in allen enthaltenen
# 1D-Arrays mindestens ein Element gibt, das ganzzahlig durch ein gegebenes x teilbar ist.

def rows_have_integral_multiple?(ary2D, x)

  ary2D.all? { |ary1D| ary1D.any? do |e_1D|
    e_1D % x == 0 && e_1D != 0
  end }
end

