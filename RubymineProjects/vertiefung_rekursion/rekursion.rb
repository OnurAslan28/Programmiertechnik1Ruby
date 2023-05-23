require 'set'
ary = [1,2,3,[4,[1,2,[[[[]]]],3.0,4,5],5],[2.0,[1,3,[1.0,3,2,4,5], 4]]]
ary1 = [[1,2], [3,4]]

ary2 =  [[1,2,5,Set.new([1,2,3]) ], [3.9,8,[3.0,4]]]

# result => 3
#
#
# result => [depth, ary]

module Enumerable

  def count_leaves()


  counter = 0

  each do |e|
    if !e.kind_of?(Enumerable)
      counter += 1
    end

    if e.kind_of?(Array)
      counter +=  e.count_leaves
      end

end

  counter
end

  def count_inner_nodes(counter = 0 )

    self.each do |e|

      if e.kind_of?(Enumerable)
        counter += 1
      end

      if e.kind_of?(Array)
        counter = e.count_inner_nodes(counter)
      end

    end
    counter
  end


  def max_width()

    maximum = 0

    self.each do |e|

      if e.kind_of?(Enumerable)
        if e.size > maximum
          maximum = e.size
        end
      end

      if e.kind_of?(Array)
        tmp = e.max_width
        if tmp > maximum
          maximum = tmp
        end

      end
    end
    maximum
  end

end

class Array

  def deep_count(elem, counter =[])

    self.each do |e|

      if e != elem && !e.kind_of?(Enumerable)
        counter << e
      end


      if e.kind_of?(Array)
        counter = e.deep_count(elem, counter)
      end
    end

    counter
  end

  def deep_count_type(type)
    counter = 0

    self.each do |e|

      if e.class == type
        counter = counter + 1
      end

      if e.kind_of?(Array)
        counter += e.deep_count_type(type)

      end

    end
    counter
  end



  def min_2_elems()
    counter = 0
    self.each do |e|


      if  e.class == Array && e.size >= 2
        counter = counter + 1
      end


      if e.kind_of?(Array)
        counter += e.min_2_elems
      end



    end

    counter
  end

  def deep_all_same_size?()

  self.each do |e|

    if e.class == Array && self.size != e.size
        return false
      end

    if e.kind_of?(Array)
       e.deep_all_same_size?
    end

  end

  true
  end



  def deep_collect_ary()

    result = []

    self.each do |e|


      if e.kind_of?(Array)
        result << e
        result += e.deep_collect_ary
      end
    end
    result
  end



  def deep_collect_ary_odd_size()
    result = []
    self.each do |e|

      if e.class == Array  &&  e.size % 2 != 0
        result << e
      end


      if e.kind_of?(Array)
        result += e.deep_collect_ary_odd_size
      end
    end
      result
  end


  # [[1,2], [3,4,[3.0,4]]]

  def deep_select_ary(&b)
    result = []
    self.each do |e|


      if e.class != Array && block_given? && (b.call(e) == true)
        result << e
      end

      if e.kind_of?(Array)
        result += e.deep_select_ary(&b)
      end
    end

    result
  end


end


#### TODO MAX+DEPTH IN ARRAY

def deep_max_elem(ary, max = 0, counter = 0, depth = 0, result = [])
  ary.each do |e|
    counter += 1

    if e.class != Array && (e > max)
      max = e
      depth = counter
    end

    if e.kind_of?(Array)
      result = deep_max_elem(e, max, counter, depth)
    end
  end
  result
end




def deep_count_types(ary, type_count = {})


  counter = 1
  ary.each do |e|

    if !type_count.has_key?(e.class)
      type_count[e.class] = 0
    end

    type_count[e.class] += counter

    if e.kind_of?(Array)
      type_count = deep_count_types(e, type_count)
    end
  end
  type_count
end


def max_depth(ary , depth = 0)


  ary.each do |e|
    if e.kind_of?(Array)
      depth += 1
      depth = max_depth(e, depth)
      if tmp > depth
        depth = tmp
      end
    end
  end
  depth
end






p max_depth(ary)