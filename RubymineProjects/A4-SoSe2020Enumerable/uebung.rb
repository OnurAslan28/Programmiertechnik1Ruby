require 'Set'


class Array


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

def deep_collect()

  result = []
  self.each do |e|
    if e.kind_of?(Array)
      result << e
      result += e.deep_collect
    else
      result << e
    end

  end

  result

end

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


def deep_collect_keys(a_hash)

  result =  Set.new

  a_hash.each_key do |key|
     if key.kind_of?(Hash)
      result << key
      result += deep_collect_keys(key)
      end
     result << key
  end

  a_hash.each_value do |value|
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