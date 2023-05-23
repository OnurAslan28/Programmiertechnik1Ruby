# Author: Janat Haref
# Author: Onur Aslan


require_relative 'song'
require_relative 'kuenstler'

song = Song.new("Sonderzug nach Pankow", Kuenstler.new("Udo Lindenberg","Panikorchester"))
puts song
