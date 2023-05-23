require_relative 'class/meter'

require_relative 'class/kilometer'

require_relative 'class/zentimeter'
require_relative 'class/millimeter'
require_relative 'class/onur_meter'

m = Meter.new(7)
km = Kilometer.new(5)
cm = Zentimeter.new(100)
mm = Millimeter.new(345)


puts km.in_basis
puts m.in_basis
puts cm.in_basis
puts mm.in_basis


puts km.von_basis(30000.0)
puts m.von_basis(10000.0)
puts cm.von_basis(1000.0)
puts mm.von_basis(345)


om = OnurMeter.new(20)

puts km.von_basis(om.in_basis)



