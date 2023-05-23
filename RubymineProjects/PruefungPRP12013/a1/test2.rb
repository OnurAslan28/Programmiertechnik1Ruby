
ary = [1,2,[3,4],2,[2,4]]


=begin
def organisiere_nach_wert(a_hash)
  new_hash = {}

  a_hash.each do |k,v|
    v.each_with_index do |i|
      new_hash = {v[i] => k}
      tmp = k
      a_hash.each do |k,v|
        if v.include?(tmp)
          new_hash{v[i] => Set.new(tmp).union(k)}
        end

      end


    end


  end
  new_hash
end
=end



h = {:key1 => 12 , :key2 => 12}

p h.key(12)




h.find_all do |k,v|

end


