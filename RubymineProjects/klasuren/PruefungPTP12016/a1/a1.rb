#TODO Naeherung fuer Math.log(x) fuer x > 0.5 iterativ (5Pkt)


def check_value(x,n, x_type, x_cond)
  raise ArgumentError if n.class != Integer || !x.kind_of?(x_type) || !(x_cond) ||  n <= 0
end

def ln_i(x,n)
  check_value(x,n, Numeric, (x > 0.5))
  (0..n).inject { |sum,i| sum + (x-1.0)**i / (i*x**i) }
end

#TODO Naeherung fuer Math.log(x) fuer x > 0.5 rekursiv (5Pkt)

def ln_r(x,n)
  check_value(x,n, Numeric,(x > 0.5))
  return (x-1.0)**n / (n*x**n) if n == 1
  ln_r(x,n-1) + (x-1.0)**n / (n*x**n)
end


# TODO Methode deep_group_by_class fuer Arrays 1Pkt
class Array

  def deep_group_by_classr
    result = Hash.new([])
    ary1 = build_ary(self )

    ary1.each {|e| result[e.class] = [] }
    ary1.each {|e| result[e.class] << e}
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
      result
    end


  public
  def deep_group_by_classf(last = [])
    result = Hash.new([])
    self.each do |e|
      if e.kind_of?(Array)
        result[e.class] += [e]
        result[e.class] += e.deep_group_by_class(last)[e.class]
      else
        last << e
      end
    end

    last.each do |e|
      tmp = result[e.class]
      result[e.class] = (tmp + [e])
    end
    result
  end

  def deep_group_by_class(result = Hash.new([]))
    self.each do |e|
      result[e.class] += [e]
      if e.kind_of?(Array)
        result[e.class] = e.deep_group_by_class(result)[e.class]
      end
    end
    result
  end

end

require "set"

def multi_value_reverse(h)
  raise ArgumentError if h.class != Hash
  set = Set.new
  hash = Hash.new([])
  h.each_value do |v|
    set += v.to_set
  end

  set.each do |e|
    h.each do |k,v|
      if v.include?(e)
        hash[e] += [k]
      end
    end
  end

  hash

end

