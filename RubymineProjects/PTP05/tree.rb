# Onur Aslan
# Janat Haref

require_relative 'Node'

class Tree < Node
  include Enumerable
  attr_reader :value

  def initialize(value)
  super(value)
  end

  def add(new_value, *indices_add)
    max = indices_add.size

    if indices_add.empty?
      self.indices << Node.new(new_value)
      return true
    else
      result = self.indices[indices_add[0]]
      (2...max).each do |i|
        result = result.indices[indices_add[i]]
        if !result.kind_of?(Node)
          return false
        end
      end
    end
    result.indices << Node.new(new_value)
    true
  end


  def each(&b)

    if !block_given?
      return enum_for(__method__)
    end
    self.indices.each do |e|
      e.each(&b)
    end
  end



  # def eql? other
  #  self.each_with_index do |e,i|
  #   if e != other.indices[i]
  #      return false
  #   end
  #  end
  # return true
  # end

end


baum1 = Tree.new(7)
baum1.add(5)
baum1.add(11)
baum1.add(5)
baum1.add(7)
baum1.add(8, 2)
baum1.add(4, 2)
baum1.add(5, 2)
baum1.add(9, 2, 1)
baum1.add(9, 2, 3)


puts "x" * 10 + "\nMinimum: #{(baum1.min).value}\n" + "x" * 10




#baum2 = Marshal.load(Marshal.dump(baum1))
#puts baum1.eql?baum2

