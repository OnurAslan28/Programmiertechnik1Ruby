require 'set'


def trenner(anzahl,aufgabe)
  print("\n" + "_" * anzahl + aufgabe + "_" * anzahl + "\n\n")
end

#Aufgabe A1.1

puts trenner(20,"A1.1")

ary1 = Array.new(10) {|i**2|i}
puts ary1.to_s

#Aufgabe A1.2

puts trenner(20,"A1.2")

str = "gut"
ary = Array.new(5) {"#{str}"}
ary[0].replace("M")
puts ary.to_s

#Aufgabe A1.3

puts trenner(20,"A1.3")

ary1.each do |e|
  if (!(e.nil?))  &&  (e != 0)  &&  (e % 3 == 0)
  puts "Value: #{e} \t" + "Index: #{ary1.index(e)}"
end
end

#Aufgabe A1.4

puts trenner(20,"A1.4")

ary1.each_index do |i|
  if i >= 2 && i <= 6
    ary1[i] = 999
  end
end
p ary1
#Aufgabe A1.5

puts trenner(20,"A1.5")

ary1 = [1,2,3]
ary2 = [1,2]
ary1.push(ary2)
puts ary1.to_s

#Ergebnis: ary2 wird auf die letzte Feldstelle von ary1 angehängt.

#Aufgabe A1.6

puts trenner(20,"A1.6")


puts ary1[ary1.length() -1]
puts ary1.slice(-1)
puts ary1.last



#Aufgabe A1.7

puts trenner(20,"A1.7")

a1 = [1,2,8,3,4,5]
mitte_ary = a1.length()/2 - 1
if a1.length % 2 != 0
  mitte_ary = mitte_ary + 1
end
puts a1[mitte_ary]

#Aufgabe A1.8

puts trenner(20,"A1.8")

# a) Liefert nil, weil die Elemente des Arrays unterschiedlich sind.
# b) Liefert nil, weil die Arrays unterschiedlich lang sind.
# c) Liefert 1 weil das die Linke Array größer ist.



#Aufgabe A1.9

puts trenner(20,"A1.9")

ary1 = Array.new(10) {|i|i**2}
ergebnis_ary = Array.new(ary.length)
ary1.each_with_index() do |elm,idx|
  ergebnis_ary[(ary1.length()-1)-idx] = elm
end
p ergebnis_ary

#Aufgabe A1.10

puts trenner(20,"A1.10")

ary1 = Array.new(10) {|i|i**2}
p ary1

for i in(0...ary1.length/2)
  tmp = ary1[i]
  ary1[i]=ary1[(ary1.length()-1)-i]
  ary1[(ary1.length()-1)-i] = tmp
end

p ary1

#Aufgabe A1.11

puts trenner(20,"A1.11")

a1 = [1,2,3]
a2 = [4,5,6]

a3 = []
a3.concat(a1,a2)

a1.concat(a2)

p a1
p a2
p a3

#Aufgabe A1.12

puts trenner(20,"A1.12")

ary = Array.new(20) {|i|i}
puts ary.join(":")

#Aufgabe A1.13

puts trenner(20,"A1.13")

ary = Array.new(49) {|e| e+1}

menge = Set.new([])

while  menge.length < 6
  menge << rand(0..48)
end

p menge

#Aufgabe B2.1

puts trenner(20,"B2.1")

mat_3_2 = Array.new(3) {Array.new(2)}


for i in (0...mat_3_2.size())
  for x in (0...mat_3_2[0].size())
    mat_3_2[i][x] = 2**i+x
  end
end

mat_3_2.to_a.each {|r| puts r.inspect}

#Aufgabe B2.2

puts trenner(20,"B2.2")

mat_3_2 = Array.new(4)

for y in (0...mat_3_2.size())
  mat_3_2[y] = Array.new(y%2 +1)
end

for z in (0...mat_3_2.size())
  for e in (0...mat_3_2[z].size())
    mat_3_2[z][e] = 2**z+e
  end
end

puts mat_3_2.to_s

#Aufgabe B2.3

puts trenner(20,"B2.3")

mat_3_2a = mat_3_2.clone
mat_3_2a = mat_3_2a << 12
puts mat_3_2a.to_s

#Aufgabe B2.4

puts trenner(20,"B2.4")

def print_mtx_row(ary)
  for i in (0...ary.length)
    puts "Index: #{i} " + ary[i].to_s()
  end
end
print_mtx_row(mat_3_2)


#Aufgabe B2.5

puts trenner(20,"B2.5")

def print_mtx_col(ary)
  max = 0
  x = 0
  while x < ary.length
    if max < ary[x].length
      max = ary[x].length
    end
    x += 1
  end

  for y in (0...max)
    print "#{y}. Spalte \t"
    for i in (0...ary.length)
        print "#{ary[i][y]}\t"
    end
      puts
  end

end


def wendholdt_col(ary2D)

max_length = 0
for zeilen_index in (0...ary2D.size())
  if (ary2D[zeilen_index].size() > max_length)
    max_length = ary2D[zeilen_index].size()
  end
end

for spalten_index in (0...max_length)
  for zeilen_index in (0...ary2D.size())
    if (spalten_index < ary2D[zeilen_index].size)
      print "#{ary2D[zeilen_index][spalten_index]}"
    else
      print " " * 4
    end
  end
  puts
end

end

print_mtx_col(mat_3_2)
#wendholdt_col(mat_3_2) #Frage: Warum ist die Ausgabe nicht wie im Skript beschrieben?

#Aufgabe B2.6

puts trenner(20,"B2.6")

def shallow_copy(ary)
  cp = Array.new
i = 0
ary.each do |e|
  cp[i] = e
  i += 1
end
  cp
end

def deep_copy(ary)
  cp = Marshal.load(Marshal.dump(ary))
  return cp
end

a = [[1,2],[3,4],5,6]

sh_cp = shallow_copy(a)
dp_cp = deep_copy(a)

a[0] << "Hallo"

puts dp_cp.inspect


mat_3_2 = Array.new(3) {Array.new(2)}


for i in (0...mat_3_2.size())
  for x in (0...mat_3_2[0].size())
    mat_3_2[i][x] = 2**i+x
  end
end



