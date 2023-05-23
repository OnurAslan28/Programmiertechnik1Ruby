class Stack

  def initialize()
    @stack = []
  end

  def pop
    @stack[0].delete
  end



  def push(e)
    e.to_a + @stack
  end

end

stack1 = Stack.new

p stack1

ary = stack1.push("hallo")

p stack1

stack1.pop

p stack1

