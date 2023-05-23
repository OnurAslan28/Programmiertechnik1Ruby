require_relative 'medium'
require_relative 'fachbereich'
require_relative 'bibliothek'

regal1 = Fachbereich.new("Informatik")
buch1 = Medium.new("Grundlagen Informatik","Aresh",:buch)
buch2 = Medium.new("Grundlagen Informatik","Onur",:buch)
buch3 = Medium.new("Grundlagen Informatik","Bilal",:buch)

bib1 = Bibliothek.new("HAW")
regal1 = Fachbereich.new("IT")
regal1.add(buch1)
regal1.add(buch2)
regal1.add(buch3)

bib1.add regal1



puts buch2.index

puts buch1.index




