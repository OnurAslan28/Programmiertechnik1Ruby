

db = {:aresh => "37" , :onur => "24" }

db[:daniele] = "12"

tmp = db.key("24")

puts db.key("24").object_id

tmp = db.key("24")

puts tmp.object_id




def trenner(aufgabe)
  puts "----------#{aufgabe}----------"
end

trenner("Hash erzeugen Beispiel 1")

hash1 = {"Aresh" => 37, "Daniele" => 24, "Onur" => 24}

puts hash1

trenner("Hash erzeugen Beispiel 2")

hash2 = {:key1 => 10, :key2 => "test"}
puts hash2

trenner("Hash erzeugen Beispiel 3")

hash3 = Hash.new
hash3["test"] = 9
puts hash3

trenner("Hash erzeugen Beispiel 4")

hash4 = {}
puts hash4

trenner("Hash mit each Beispiel1")

hash5 = { "key1" => 1, "key2" => 2, "key3" => "drei", "key4" => 4 }

hash_test = hash5.each { |k,v| puts "#{k} ist #{v}" }

trenner("Hash mit each Beispiel2")

hash5.each_key { |k| puts k }

trenner("Hash mit each Beispiel3")

hash5.each_value { |v| puts v }

##### Für hash gibt es kein times und for #####

trenner("Beispiel1 Key/Value kein String/Symbol")

hash6  = { :a => ["a", "b", "c"], :b => ["b", "c"] }
puts hash6.values.inspect

trenner("Beispiel2 Key/Value kein String/Symbol")

a = [1,2,3]
b = [3,4,5]
a.hash
b.hash
hash7 = {a => 6, b => 12}
puts hash7.inspect

trenner("Methode die, die gerade Elemente von einen gemischten Array ausgibt")

ary1 = [1, [7, 4, [2, [8]],[3, 9, 6]], 8].flatten
p ary1


def gerade_zahlen(ary)

  ergebnis = []

  ary.each do |e|
    if e.kind_of?(Array)
      ergebnis += gerade_zahlen(e)
      else
        if e % 2 == 0
        ergebnis << e
        end
    end

  end
  ergebnis
end

puts gerade_zahlen(ary1)

trenner("SoSe 2012 Aufgabe 1b")


def ln(x,n)
  # if (n.class != Integer || n.class != Float)   || (x.class != Integer || x.class != Float)
  #  return false
  # end


  # oder if x > o ... else return false
  #if x < 0
  # return false
  #end

  return ((x-1.0)**(2.0*0+1.0))/((2.0*0+1.0)*(x+1.0)**(2.0*0+1.0)) if n == 0
  ln(x, n-1) + ((x-1.0)**(2.0*n+1.0))/((2.0*n+1.0)*(x+1.0)**(2.0*n+1.0))


end

puts ln(5,100)



def test(n=5)

return puts 0  if n == 0

test(n-1)

end

puts test