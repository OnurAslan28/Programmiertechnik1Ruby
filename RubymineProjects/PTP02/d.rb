
def output(aufgabe, anzahl=25)
  print("\n" + "*" * anzahl + aufgabe + "*" * anzahl + "\n\n")
end

# 2.Testfall
# Ergebnis: Schleife str[index] durchlaufen und jeden Wert im Feld einzeln abspeichern.

output("D1", 20)

# 1.Testfall

puts "Teststring: "
str1 = gets()
p str1.class
# Ergebnis: String

output("D2", 20)

str1.chomp!
p str1
# Ergebnis: Methode chomp! anwenden. chomp! entfernt NewLine.

output("D3", 20)

str = "f34gc0vd4gf4dgf5daf"

str.length.times do |i|

  if (str[i] >= "0" && str[i] <= "9")
    print str[i]
  end

end


def zahl_lesen()
  eingabe = gets.chomp()

  if

  elsif

  else

  end

  # 1'ter Fall Eingabe besteht nur aus Ziffern -> ganze Zahl
  # 2'te Fall Eingabe enthält genau eine Gleitkommazahl
  # 3'ter Fallnicht 1 oder 2
end

output("D4", 20)