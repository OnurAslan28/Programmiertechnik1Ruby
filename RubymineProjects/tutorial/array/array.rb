class Array

  def pow2
    self.each_with_index { |e,i| self[i] = e**2 }
  end

end



y = -2
ary1 = Array.new(10) {y = y + 2}


#puts ary1.pow2

puts ary1.pow2.inspect
puts ary1.inspect




def trenner
  puts "-------------------------------"
end


#TIMES

#Beispiel1

10.times  {puts "hello"}

trenner

#Beispiel2

10.times do |i|

  if i == 0
    puts "Ueberschrift"
  end

  puts i.to_s


end

trenner

#Beispiel3

ary = []
8.times do
ary << rand(1..48)
end

puts ary.inspect

trenner

#for

#Beispiel1

ary = [5,2,6,4,3,6,7]

for i in ary do
  puts i.inspect
end

trenner

#Beispiel2

for i in 1..3
  puts i
end

trenner

#Beispiel3
ary = [4,6,2,4,5,3,1]

for i in ary
  if i % 2 == 0
  puts i
  end
end

trenner

#each

#Beispiel1

ary = [4,6,2,4,5,3,1]

ary.each do  |e|
  puts  "Element #{e}"
  end

trenner

#Beispiel2

[1,2,3].each do |e|
  if e == 3
    puts e
  end
end

trenner

#Beispiel3
#

ary = [1,2,3,4,5,6,7,8]
tmp = ary.each


tmp2 = []
3.times do

  tmp2 << tmp.next
end

p tmp2


puts "ENUM"


trenner

#Array.new

#Beispiel1

ary = Array.new(10) {|i|i*2}
puts ary.to_s

trenner

#Beispiel2

ary = Array.new(10,"test")

puts ary.to_s

trenner

#Beispiel3


ary = Array.new(10)
puts ary.to_s

