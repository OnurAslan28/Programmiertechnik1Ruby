# TODO Naeherung fuer 1/4 iterativ
# Summe 5 PKt

def f_1_4tel_it(n)

  if !n.kind_of?(Integer) || n <= 0
    return false
  end

  sum = 0
  i = 1
  while i <= n
    sum += 1.0/(i*(i+1)*(i+2))
    i += 1
  end
  sum

end


# TODO Naeherung fuer 1/4 rekursiv
# Summe 5 Pkt
def f_1_4tel_rek(n)

  if !n.kind_of?(Integer) || n <= 0
    return false
  end

  if n == 1
    return (1.0/(1*(1+1)*(1+2)))
  end
  f_1_4tel_rek(n-1) + (1.0/(n*(n+1)*(n+2)))
end

# TODO Array erweitern ary_min_e_elems
# Summe 10 Pkt

class Array

  def ary_min_2_elems
    ergebnis = 0
    if self.size >= 2
      ergebnis += 1
    end
    self.each do |e|
      if e.kind_of?(Array)
        ergebnis += e.ary_min_2_elems
      end
    end
    ergebnis
  end
end







# TODO  Methode organisiere_nach_wert(a_hash) 6 Pkt

require "Set"

def organisiere_nach_wert1(a_hash)

  new_hash = {}
  a_hash.each_value do |v|
    v.to_a.each do |e|
      set = Set.new()
      a_hash.each do |k,v|
        if v.include?(e)
          set = set << k
          new_hash[e] = set
        end
      end
  end
  end
  new_hash
end

def organisiere_nach_wert2(a_hash)

  result = Hash.new(Set.new)
  set_values = a_hash.values.map { |e| e.to_a }
  set_values.empty? ?  set1 = Set.new : set1 = set_values.flatten!.to_set

  set1.each do |e|
    set = Set.new
    a_hash.each do |k, v|
      if v.include?(e)
        result[e] = set << k
      end
    end
  end

  result
end


# TODO Methode schluessel_pro_wert(h) 4 Pkt
def schluessel_pro_wert(h)
  result = {}
  h_sort = organisiere_nach_wert(h)
  h_sort.each do |k,v|
    result[k] = v.size
  end

  result
end
