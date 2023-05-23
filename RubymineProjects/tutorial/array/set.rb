require 'Set'

def trenner(aufgabe)

  puts "----------#{aufgabe}----------"
end

trenner("Set1")

set1 = Set[1,"zwei",:drei]

puts set1.inspect

trenner("Set2")

set2 = Set.new(1..5)

puts set2.inspect

trenner("Set3")

set3 = [6,2,4,3,2].to_set

puts set3.inspect

trenner("Set Teilmenge")

set4 = Set[3,6,4,9]
set5 = Set[1,2,3,4,5,6,7,8,9]

puts set4.subset?(set5)

set6 = Set[3,6,4,9]
set7 = Set[1,2,3,4,5,6,7,8,9]

puts set7.subset?(set6)

trenner("Set Vereinigungsmenge")

puts Set[3,5,4] | Set[5,6,7]

puts Set[2,7,"a"] | (1..6)

trenner("Set Schnittmenge")

puts Set[3,4,5].intersect? Set[6,7]

puts Set[3,4,5].intersect? Set[5,6,7]

trenner("Stack")

arr  = [1,2,3,[4,5],6]
stack = []
arr.each do |e|
  if e.is_a?(Array)
    e.each { |i| arr << i }
  else
    stack << e
  end
end
puts stack