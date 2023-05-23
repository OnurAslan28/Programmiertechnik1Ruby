
def output(aufgabe, anzahl=25)
  print("\n" + "*" * anzahl + aufgabe + "*" * anzahl + "\n\n")
end

output("F", 20)

# test =File.new("out.txt","w")   #Erzeugt ein File "w" writeable
#
#
# file = File.open(test, "w")
#
# x = 0
# puts "Dateipfad: "
# while x != "exit"                #solange der Benutzer nicht "exit" eintippt, ließt er alles in die variable "x" ein
#   x = gets
#   x.chomp!
#
#   if x != "exit"                 #Ließt alles in den File ein bis der Benutzer "exit" eintippt.
#     file << x                    # Schiftet den InPut von der Variablen "x" in die Variable "file"
#   end
#
# end
#
# test.close


File.open("out.txt", "a") do |out_file|
  File.open("in.txt","r") {|in_file|
    #out_file.puts(in_file.gets())
    in_file.each_line() {|line|
      out_file.puts(line)
    }
  }
end