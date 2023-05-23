
ary = [1,2,3,4,[[23]], 3.0]

class Array

  def deep_group_by_class
    result = Hash.new([])
    ary1 = build_ary(self)


    ary1.each do |e|
      result[e.class] = []
    end

    ary1.each do |e|
      result[e.class] << e
    end
     result
  end

  private

  def build_ary(ary1)
    result = []
    ary1.each do |e|
      result << e
      if e.kind_of?(Array)
        result += build_ary(e)
      end
    end
    p result
    result
  end



end
p ary.deep_group_by_class