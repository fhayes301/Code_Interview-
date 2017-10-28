Stacks and Queues

Implementing a Stack
- Uses LIFO (last-in first-out ordering)
- pop: remove top item from stack
- push(item): add item to top of the stack
- peek: return top of stack
- isEmpty: return true if empty

`
class Stack

  def initialize(size)
    @store = Array.new
    @top = -1
    @size = size
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

  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end

  def size
    @size
  end

  def look
    @store[@top]
  end

  private

  def full?
    @top == (@size - 1)
  end

  def empty?
    @top == -1
  end  
end
`


Implementing a Queue
- uses FIFO (first-in first-out) ordering
- add(item): add item to end of the list
- remove: remove first item in the list
- peek: return the top of the queue
- isEmpty - returns true if empty


`
class Queue
  def initialize(size)
    @store = Array.new
    @size = size
    @head, @tail = -1, 0
  end

  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ

      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
      dequeued
    end
  end

  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      @store[@tail] = element
      self
    end
  end

  def size
    @size
  end

  private

  def empty?
    @head == -1 && @tail == 0
  end

  def full?
    @tail.abs == (@size)
  end 
end
`
