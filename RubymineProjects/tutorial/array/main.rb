require_relative  'Student'
require_relative  'Professor'


student1 = Student.new

p student1

puts student1.name
puts student1.matrikelnummer

student1.alter = 25

puts student1.alter

student1.name[1] = "B"


puts student1.name


