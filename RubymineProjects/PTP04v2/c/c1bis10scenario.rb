require "./c1bis10"

def trenner(pre)
  puts("#{pre}".ljust(100,"-"))
end

def pp(ary2D)
 max_length = ary2D.map(){|ary1D| ary1D.max_by(){|elem| elem.to_s().size()}}.max_by(){|elem| elem.to_s().size()}.to_s().size()
  for i in (0..ary2D.size()-1)
    for j in (0...ary2D[i].size())
      print ary2D[i][j].to_s().rjust(max_length+1)
    end
    puts
  end
end

trenner("c1 harmonic_series")

for n in (1..5)
  puts "n:#{n} => #{harmonic_series(n)}"
end

trenner("c2 sqrt")

srand(999999999999999)
ary = Array.new(10){|i| (i+1)**2 }
ary.shuffle!()
p ary
p sqrt(ary)

trenner("c3 rowsum_greater")

srand(999999999999999)
ary2D = Array.new(6){Array.new(rand(5)+1) {rand(0..12)}}
puts "\nMatrix1: "
pp(ary2D)
puts "\nMatrix2: "
pp rowsum_greater(ary2D,30)





trenner("c5 key_with_max_value")
srand(999999999999)
size=10
h = {}
until h.size() == size
  h[rand(40)]= rand(20)
end

puts "h:#{h}"
puts "keys_with_max_value(h): #{key_with_max_value(h)}"




trenner("c4 sort_down_by_value")

puts "h:#{h}"
puts "sort_down_by_value(h): #{sort_down_by_value(h)}"




trenner("c6 sort_by_accumulated_value")

srand(999999999999999)
size=10
h = {}

until h.size() == size
  h[rand(40)]= Array.new(rand(8)+1) {rand(10)}
end

puts "h #{h}"
puts "#{sort_by_accumulated_value(h)}"

#pp(sort_by_accumulated_value(h))

trenner("c7 three_two_one_sort")

srand(999999999999999)
size = 4
ary2D = Array.new(12){Array.new(6) {rand(10)}}
pp(ary2D)
trenner"now sorted"
pp(three_two_one_sort(ary2D))

trenner("c9 has_elem_greater")

p ary
n = 100
puts "has_elem_greater(ary, #{n}): #{has_elem_greater(ary,n)}"
n = 78
puts "has_elem_greater(ary, #{n}): #{has_elem_greater(ary,n)}"

trenner("c10 rows_have_integral_multiple?")

ary2D = Array.new(12){Array.new(6) {rand(10)}}
pp(ary2D)

n =1
puts "rows_have_integral_multiple?(ary2D,#{n}): #{rows_have_integral_multiple?(ary2D,n)}"
n =2
puts "rows_have_integral_multiple?(ary2D,#{n}): #{rows_have_integral_multiple?(ary2D,n)}"
n =3
puts "rows_have_integral_multiple?(ary2D,#{n}): #{rows_have_integral_multiple?(ary2D,n)}"
n =4
puts "rows_have_integral_multiple?(ary2D,#{n}): #{rows_have_integral_multiple?(ary2D,n)}"
n =5
puts "rows_have_integral_multiple?(ary2D,#{n}): #{rows_have_integral_multiple?(ary2D,n)}"