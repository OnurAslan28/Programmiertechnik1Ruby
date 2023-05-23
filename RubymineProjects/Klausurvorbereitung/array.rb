def trenner(str)
  puts "#{str} --------------------------------------------------------------------------"
end


trenner("ue_5b1")

ary = Array.new(10)
puts ary.to_s

trenner("ue_5b2")

onur = "Onur"
ary = Array.new(10,onur)
puts ary.to_s

onur.replace("Tim")
puts ary.to_s

ary = Array.new(10,"Onur")
puts ary.to_s

ary[0].replace("Daniele")
puts ary.to_s

ary = Array.new(10) {"Onur"}
ary[0].replace("Hallo")
puts ary.to_s

trenner("ue_5b3")

ary = Array.new(10) {|i|i}
puts ary.to_s

trenner("ue_5b4")

ary = Array.new(10) {|i|i % 3}
puts ary.to_s

trenner("ue_5b5")

ary = Array.new(10) {|i|i}
puts ary[0]
puts ary.first()
puts ary.slice(0)

puts ary[-1]
puts ary.last
puts ary.slice(-1)

trenner("ue_5b6")

puts ary[5,4].to_s
#ary1 = ary.clone

trenner("ue_5b7")

puts ary[5..8].to_s
#ary2 = ary.clone

#puts ary1.__id__ == ary2.__id__

trenner("ue_5b7")

for i in (0...ary.length)
  puts "#{i} #{ary[i]}"
end

ary.each_with_index() {|e,i|puts "#{i} #{e}"}

trenner("ue_5b8")

for i in (0...ary.length)
  if i % 2 == 0
  puts "#{i} #{ary[i]}"
  end
end

ary.each_with_index() do |e,i|
  if (i % 2 == 0)
    puts "#{i} #{e}"
  end
end

trenner("ue_5b9")

ary.each_with_index() do |e,i|
  zahl = 3
  if (i % zahl == 0)
    puts "#{i} #{e}"
  end
end

trenner("ue_5b10")


ary1 = [4,5,6,4]
puts 3 <=> 2


sasa.each do |e|
  e
end

sasa.each do |e|


end


