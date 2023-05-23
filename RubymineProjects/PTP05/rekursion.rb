# Onur Aslan
# Janat Haref

require 'bigdecimal/util'

# Aufgabe 1a
def f_1_4tel_itr(n)
  raise ArgumentError,("Negative Zahl!") if n < 0 || n.class != Integer
  sum = 0
  i = 1
  while i <= n
    sum += 1.0/(i*(i+1)*(i+2))
    i += 1
  end
  sum
end

puts f_1_4tel_itr(100)

# Aufgabe 1b

def f_1_4tel_rek(n, i = 1, sum = 0)
  raise ArgumentError,("Negative Zahl!") if n < 0 || n.class != Integer
  return sum if i > n
  f_1_4tel_rek(n, i+1, sum + 1.0/(i*(i+1)*(i+2)))
end

puts f_1_4tel_rek(100)


# Aufgabe 2 iterativ

def ln_itr(x,n)
  raise ArgumentError,("x oder n im falschen Wertebereich") if n < 0 || (x < 0 || x >= 2) || n.class != Integer
  sum = 0
  i = 1
  while i <= n
    sum = sum + (-1.0)**(i+1) * (((x-1.0**i)/i))
    i += 1
  end
    sum
end
puts ln_itr(1.9, 100)

# Aufgabe 2a

def ln_rek(x,n)
  raise ArgumentError,("x oder n im falschen Wertebereich") if n < 0 || (x < 0 || x >= 2) || n.class != Integer
  return (-1.0)**(1+1) * (((x-1.0**1)/1))  if n == 1
  ln_rek(x, n-1) + (-1.0)**(n+1) * (((x-1.0**n)/n))
end

puts "lnrek:"
puts ln_rek(1.9, 100)


# Aufgabe 2b

def ln_rek_end(x,n,i=1, sum = 0)
raise ArgumentError,("x oder n im falschen Wertebereich") if n < 0 || (x < 0 || x >= 2) || n.class != Integer
return sum if i > n
ln_rek_end(x, n, i+1, sum + (-1.0)**(i+1) * (((x-1.0**i)/i)))
end

puts ln_rek_end(1.9, 100)




