# Three in One: Describe how you could use a single array to implement three stacks.

# You could take the array and assign values to different locations in the stack.

#example take this array

# arr = ["a", "b", "c", "d", "e","f","g"]

#mayabe make that a class

#arr[0-3] = one stack
#arr[4-6] = another stack


class ManyStacks
  attr_reader :stack_size, :top_index
  def initialize(stacks=1)
    @stacks = stacks
    @stack_size = (0...stacks).to_a.reduce({}) { |h,k| h[k]=0;h }
    @top_index = (0...stacks).to_a.inject({}) { |h,k| h[k]= -1;h}
    @array = []
  end

  def pop(stack)
    popped = @array[@top_index[stack]]
    @array[@top_index[stack]] = nil
    @stack_size[stack] -= 1
    @top_index[stack] -= @stacks
    return popped
  end

  def push(stack, obj)
    is_empty?(stack) ? @top_index[stack] = stack : @top_index[stack] += @stacks
    @stack_size[stack] += 1
    @array[@top_index[stack]] = obj
  end

  def peek(stack)
    return @array[@top_index[stack]]
  end

  def is_empty?(stack)
    return @stack_size[stack] == 0 ? true : false
  end

end
