#Author: Janat Haref
#Author: Onur Aslan


# 1. Gegeben die folgende Formel für die harmonische Reihe: ∑_(i=1)^n▒1/i. Schreiben Sie eine Methode,
# die die Summe für ein vorgegebenes n berechnet. Verwenden Sie ein Intervall und die Methode inject.
#
def harmonic_series(n)
  (1..n).inject { |sum, n| sum + 1.fdiv(n).rationalize }

end

# 2. Schreiben Sie eine Methode, die für ein Array von Zahlen die Funktion f(x)= √x berechnet.
# Das Ergebnis soll ein Array von 2-elementigen Arrays sein, dessen 1’tes Element x und dessen 2’tes Element f(x) ist.
# Bsp.:

def sqrt(ary)

  tmp = Array.new(2)
  erg_ary = ary.collect do |e|
    tmp[0] = e
    tmp[1] = Integer.sqrt(e)
    tmp.clone
  end
  erg_ary

end

# 3. Schreiben Sie eine Methode, die für beliebige 2D-Arrays und eine beliebige obere Grenze x
# die 1D-Arrays bestimmt, für die die Summe der Elemente > x wird. Das Ergebnis ist ein 2D-Array,
# das nur die Teil-Arrays enthält, deren Elemente die Bedingung erfüllen. Lösen Sie die Aufgabe
# mit geeigneten Methoden von Enumerable (Verwendung von each ist nicht erlaubt).
#
def rowsum_greater(ary2D, x)
  erg_ary = ary2D.find_all do |ary1D|
    x > ary1D.sum
  end
  erg_ary

end

# 4. Schreiben Sie eine Methode, die einen Hash absteigend nach Werten sortiert. Sie dürfen davon ausgehen,
# dass die Werte vergleichbar sind.

def sort_down_by_value(a_hash)

  hash_ary = a_hash.to_a
  hash_ary.sort! do |b, a|
    a[1] <=> b[1]
  end
  hash_ary.to_h # keys.sort , falls nur Werte sortiert in Array

end


# 5. Bestimmen Sie für einen Hash den Schlüssel, für den der Wert maximal ist. Sie dürfen davon ausgehen,
# dass die Werte vergleichbar sind.

def key_with_max_value(a_hash)
  tmp = []
  a_hash.each_key do |k|
    tmp << a_hash.fetch(k)
  end
  max_value = tmp.max
  a = a_hash.select { |k, v| v == max_value }
  a.keys.inspect
end

# 6.	Schreiben Sie eine Methode, die einen Hash, dessen Werte Arrays von Zahlen sind,
# nach der Summe der Elemente des Wertes sortiert.

def sort_by_accumulated_value(a_hash)

  tmp = []
  pair = Array.new(2)
  a_hash.each do |k, v|
    pair[0] = k
    pair[1] = v.sum
    tmp << pair.clone
  end

  tmp.sort! { |e1, e2| e1[1] <=> e2[1] }
  hash_ary = []
  hash_tmp = Array.new(2)
  tmp.each do |e|
    hash_tmp[1] = (a_hash.values_at(e[0])).flatten
    hash_tmp[0] = e[0]
    hash_ary << hash_tmp.clone
  end
  hash_ary.to_h #keys.sort , falls nur Werte sortiert in Array

end

# 7.	Schreiben Sie eine Methode, die ein regelmäßiges 2D-Array von Zahlen, dessen Zeilen mindestens
# die Länge 3 haben, zuerst nach dem 3’ten, dann nach dem 2’ten und dann nach dem 1’ten Element sortiert.
# Sortieren nach dem 2’ten Element, darf die Reihenfolge des Sortierens nach dem 3’ten Element
# nicht zerstören. Das Gleiche gilt für das Sortieren nach dem 1’ten Element.
# Das Ergebnis ist das sortierte 2D-Array.

def three_two_one_sort(ary2D)

  return ary2D.sort_by do |zeile|
    [zeile[0], zeile[1], zeile[2]]
  end
end

# 8.(*) Schreiben Sie eine Methode, die für ein beliebiges 2D-Array unter Verwendung von map oder collect
# eine tiefe Kopie erzeugt.

def deep_copy(ary2D)

end

# 9. Schreiben Sie eine Methode, die für ein 1D-Array von Zahlen prüft, ob es ein Element gibt,
# das  > einem gegebenen x ist.

def has_elem_greater(ary1D, x)

  ary1D.each do |e|
    if e > x
      return true
    end
  end
  false
end

# 10.	Schreiben Sie eine Methode, die für ein 2D-Array von Zahlen prüft, ob es in allen enthaltenen
# 1D-Arrays mindestens ein Element gibt, das ganzzahlig durch ein gegebenes x teilbar ist.

def rows_have_integral_multiple?(ary2D, x)

  counter = 0
  ary2D.each do |e|
    i = false
    e.each do |a|
      if a % x == 0 && a != 0
        i = true
      end
    end
    if i == true
      counter = counter + 1
    end
  end

  if ary2D.size == counter
    return true
  else
    return false
  end

end

