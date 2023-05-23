# Author: Janat Haref
# Author: Onur Aslan


# B Kontrollstrukturen



def output(aufgabe, anzahl=25)
  print("\n" + "*" * anzahl + aufgabe + "*" * anzahl + "\n\n")
end


#________________ B1 ___________________

def sport(temperatur, windstaerke, niederschlag=nil)

  if temperatur == :low && windstaerke == :high
    return :schwimmen
  end

  if temperatur == :high && windstaerke == :high
    return :surfen
  end

  if temperatur == :middle && windstaerke == :middle && ( niederschlag == :low || niederschlag == :middle )
    return :joggen
  end

  if temperatur == :middle && ( windstaerke == :middle || windstaerke == :high )
    return :segeln
  end


  :couchpotato

end

# TODO kein default
def sport1(temperatur, windstaerke, niederschlag=nil)

  if temperatur == :low && windstaerke == :high
    return :schwimmen

  elsif temperatur == :high && windstaerke == :high
    return :surfen

  elsif temperatur == :middle && windstaerke == :middle && ( niederschlag == :low || niederschlag == :middle )
    return :joggen

  elsif temperatur == :middle && ( windstaerke == :middle || windstaerke == :high )
    return :segeln

  else
    return :couchpotato
  end

end

# TODO Reihenfolge

def sport1(temperatur, windstaerke, niederschlag=nil)

  result = case
           when temperatur == :low && windstaerke == :high then :schwimmen
           when temperatur == :high && windstaerke == :high then :surfen
           when temperatur == :middle && windstaerke == :middle && ( niederschlag == :low || niederschlag == :middle ) then :joggen
           when temperatur == :middle && ( windstaerke == :middle || windstaerke == :high ) then :segeln
           else
             :couchpotato
           end
  result
end


# def sport (temperatur, windstaerke, niederschlag = nil)
#
#   if temperatur.nil? || windstaerke.nil?
#     puts "Falsche Eingabe"
#     return nil
#   end
#
#   #B1 a)
#   #if_anweisung(temperatur, windstaerke, niederschlag)
#
#   #B1 b)
#   #if_kaskade(temperatur,windstaerke,niederschlag)
#
#   #B1 c)
#   #case_bedingung(temperatur,windstaerke,niederschlag)
#
# end

# ---------------------------------------
output("schwimmen")
puts sport(:low, :high, :low)
puts sport(:low, :high, :high)
puts sport(:low, :high, :middle)

output("surfen")
puts (sport(:high, :high))
puts (sport(:high, :high, :low))
puts (sport(:high, :high, :middle))
puts (sport(:high, :high, :high))

output("segeln")
puts sport(:middle, :middle, :high)
puts sport(:middle, :high)
puts sport(:middle, :high, :low)
puts sport(:middle, :high, :middle)
puts sport(:middle, :high, :high)

output("coachpotato")
puts (sport(:low, :middle))
puts (sport(:low, :low))
puts sport(:high, :low)
puts sport(:high, :middle)
puts sport(:middle, :low)


output("joggen")
puts sport(:middle, :middle, :low)
puts sport(:middle, :middle, :middle)


#________________ B2-3 ___________________

def intervall_drucken(start, ende)

  ((ende-start)+1).times do
    print start.to_s + " "
    start += 1
  end

end

def dreieck(start, ende)

  while start <= ende
    intervall_drucken(start, ende)
    print ("\n")
    ende -= 1
    start += 1
  end
end



#________________ Test B1-3 ___________________

# trenner("B1", 20)
# puts sport(:low, :high)


output("B2", 20)
intervall_drucken(5, 11)


output("B3", 20)
dreieck(5, 11)





