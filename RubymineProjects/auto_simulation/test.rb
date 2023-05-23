require_relative 'auto'
require_relative 'garage'


areshs_garage = Garage.new

bmw = Auto.new("v8",100)
mercedes = Auto.new("v9",120)
honda = Auto.new("v5",80)


puts areshs_garage.inspect

areshs_garage << 1

puts areshs_garage.inspect