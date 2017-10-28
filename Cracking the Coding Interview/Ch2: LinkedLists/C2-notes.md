Linked Lists

Advantages
 - constant-time inseartins and deletions in any position
 - arrays require 0(n) time to do the same thing because you'd have to shift all the subsequent items over 1 index
 - can expand

 Disadvantage
 - to access/edit an item you have to walk the entire list
 - memory intensive since each element holds a value & pointer

 `
 class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end

 class LinkedList

  def initialize(val)
    @head = Node.new(val, nil)
  end

  def add(val)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(val, nil)
  end

  def delete(val)
    current.next = @head
    if current.val = val
      @head = current.next
    else
      while (current.next != nil) && (current.next.val != val)
        current = current.next
      end
      unless current.next == nil
        current.next = current.next.next
      end
    end
  end

  def return_list
    elements = []
    current = @head
    while current.next != nil
      elements << current
      current = current.next
    end
    elements << current
  end
end
  `
