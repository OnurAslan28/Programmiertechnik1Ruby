# Onur Aslan
# Janat Haref

require 'Set'

class Array

# Aufgabe B 1
def deep_collect_string_min_length(k)
  result = []

  self.each do |e|
    if e.kind_of?(Array)
      result += e.deep_collect_string_min_length(k)
    else
      if e.size >= k
        result << e
      end
    end

  end
  result
end

# Aufgabe B 2
def deep_count()
  zaehler = 0
  self.each do |e|
    if e.kind_of?(Array)
      zaehler += e.deep_count()
    end
    zaehler = zaehler + 1
  end
  zaehler
end

# Aufgabe B 3
def deep_collect()

  result = []
  self.each do |e|

    result << e
    if e.kind_of?(Array)
      result += e.deep_collect
    end
  end

  result

end

# Aufgabe B 5
def depth
  counter = 0
  self.each do |e|
    if e.kind_of?(Array)
      counter += 1
      counter += e.depth
      else
        counter
    end

  end
  counter
end

end

# Aufgabe B 7
def deep_collect_keys(a_hash)

  result =  Set.new
  a_hash.each_key do |key, value|
    result << key
     if key.kind_of?(Hash)
      result += deep_collect_keys(key)
     end

    if value.kind_of?(Hash)
      result += deep_collect_keys(value)
    end
  end
  result
  end



hash1 = {{2=>4} => {4 => {{5 => {1 => 3, 2=> 4}} => {7 => 8}}}}
puts deep_collect_keys(hash1)


ary = ["1",["3"],[[["76"]]], "678"]

#puts ary.deep_collect_string_min_length(2)

#puts ary.deep_count

#puts ary.deep_collect.inspect

#puts ary.depth