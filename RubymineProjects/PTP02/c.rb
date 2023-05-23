def output(aufgabe, anzahl)
  print("\n" + "*" * anzahl + aufgabe + "*" * anzahl + "\n\n")
end

#________________ C1 ___________________

output("C1", 20)
sentence = "My name is Robert"
puts sentence                         #puts sentence gibt den String wieder
puts sentence.sub 'Robert', 'Tim'     #puts sentence.sub ersetzt den TeilString Rober mit Tim



#________________ C2 ___________________

output("C2", 20)
puts sentence.match?(/Robert/)
puts sentence.include?("Robert")
puts sentence.scan(/Robert/) == ["Robert"] #Rückgabewert v. scan kein Boolean, aber Ergebnis-Array z. Vergleich
puts sentence.index(/Robert/) != nil #Rückgabewert v. index kein Boolean, aber Ergebnis Interger o. Nil ==> Auswertung möglich

#________________ C3 ___________________

output("C3", 20)

#Beweis nach Replace andere Objekt_ID !!!
=begin
print("Objektidentität nach replace: ")
puts (str = String.new).object_id == (str.replace("Kuchen")).object_id
print("Objektidentität nach Zuweisung: ")
puts ((str = String.new).object_id == (str = "Kuchen").object_id)
=end


puts a = "String1" # Inizialisierung und Dekleration in Einem
x = String.new #Inizialisierung vorher notwendig
puts x.replace("String2")

output("C4", 20)

str1 = "Hello"
str2 = "World"

puts "str1 + str2: \t\t" + str1 + str2
puts "str1.concat(str2): \t" + str1.concat(str2)
puts "str1 << (str2): \t" + str1 << str2

output("C5", 20)

puts "12435wq".to_i #Ungültige Zahlen werden umgewandelt
puts "2B".to_i # Hex-Zahl im String für methode to_i nicht identifizierbar

output("C6", 20)

#lstrip

#str1 = "Test"
str1 = "  Test"
str2 = str1.lstrip!
puts str2[0]

#downcase
puts "ich komme aus hamburg".downcase! == "ich komme aus hamburg"
puts "Ich komme aus hamburg".downcase! == "ich komme aus hamburg"

puts "\n"

#delete
puts ("Teststring: ")
input = gets()
str = input.chomp!
new_str = str.delete!("A")
new_str.upcase!


output("C7", 20)

str = "hello world"
p str.delete("lo")
p str.delete("lo", "e") # keine Intersection(Schnittmenge)
p str.delete("lo", "l") # Intersection(Schnittmenge) := {l}

output("C8", 20)

puts "12345" <=> "1234"

str1 = "42345"
str2 = "8234"

puts str1[0] <=> str2[0]

puts ("abcdef" <=> "abcdefg") * -1

output("C9", 20)

str = "CamelCase"
str_down = str.downcase
str_up = str.upcase

puts str_down <=> str_up
#ASCII
puts str <=> str_up
puts str <=> str_down

puts str_up.casecmp(str_down)

output("C10a", 20)

# 1.Testfall
str1 = "Intel ligenz"
str1 = str1.split()
p str1
# Ergebnis: Methode split teilt den String bei jedem Leerzeichen
# und speichert den String (bis zum Leerzeichen) in einem Array ab.

# 2.Testfall
str1 = "   Intelligenz"
str1 = str1.split()
p str1
# Ergebnis: Methode split löscht somit auch alle Leerzeichen.


# 3.Testfall
str1 = "Intelligenz   "
str1 = str1.split()
p str1
# Ergebnis: s. Testfall 2

output("C10b", 20)

# 1.Testfall
str1 = "Intelligenz;ist;für;dumme;Menschen"
str1 = str1.split(';')
p str1
# Ergebnis: Methode split löscht das Semikolon und trennt den String wie gewohnt (s. 10a)