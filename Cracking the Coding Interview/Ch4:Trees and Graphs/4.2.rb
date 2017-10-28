# Given a sorted (increasing order) array with unique integer elements, write an algorithm to create a binary search tree with minimal height.

# Discussion:
#   "Minimal height" implies that the BST is balanced, so we should consider
#   placing the median value at the root. This must occur at each branch, so
#   it also implies a recursive algorithm.
#

# On each recursive step, this implementation splits the given array into three
#   parts: the middle value, the remaining left tree, and the remaining right
#   tree. The middle value becomes the root node of the current tree, and the
#   other parts are assigned to the node's left and right trees.
Node = Struct.new(:value, :left, :right)

def array_to_bst(array, l, r)
  return nil if l > r
  mid = (l + r)/2
  node = Node.new(array[mid])
  node.left = array_to_bst(array, l, mid - 1)
  node.right = array_to_bst(array, mid + 1, r)
  p node
end

# recursion
def print_bst(node)
  return unless node
  print node.value
  print_bst(node.left)
  print_bst(node.right)
end

# bfs
def stringify(node)
  queue = []
  queue << node
  str = ""
  while !queue.empty?
    current = queue.shift
    str += current.value.to_s
    queue << current.left if current.left
    queue << current.right if current.right
  end
  return str
end

arr = [1,2,3,4,5,6,7,8,9,10]
p array_to_bst(arr, 5,6)
