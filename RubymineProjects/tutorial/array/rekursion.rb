
ary1 = [1,2,3]
ary2 = [2,3,4]

def sum(ary1, ary2, i=0)

  if i > ary1.length-1
    return 0
  end

 sum(ary1,ary2, i+1) + ((ary1[i]) + ary2[i])

end

p sum(ary1, ary2)




def test(n,i=1)
  if i > n
    return 0
  end
  puts "Hallo"
  test(n , i + 1)
end

def fakultaet(n , i=1)

  if i > n
    return 1
  end
  fakultaet(n, i+1) * i
end

puts fakultaet(3)


ary1 = [1, [7, 4, [2, [8]],[3, 9, 6]], 8]


def collect(ary)
  ary3 = []
  ary.each do |e|
    if e.kind_of?(Array)
      tmp = []
      ary3 += tmp << collect(e)
    else
      ary3 << e**2
    end

  end
  return ary3
end

puts collect(ary1).inspect
