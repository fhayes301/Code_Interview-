# How would you design a stack which, in addition to push and pop, has a function min
# which returns the minimum element? Push, pop and min should all operate in 0(1) time.

class Stack
  attr_accessor :min

  def initialize(size)
    @store = Array.new
    @top = -1
    @size = size
    @min = @store[0]
  end

  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end

  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element

      if min == nil || min > element
        self.min = element
      end
      self
    end

  end

  private

  def full?
    @top == (@size - 1)
  end

  def empty?
    @top == -1
  end
end
