Trees and Graphs

Tree vs. Binary Tree

Binary Tree
 - no dublicate values!
 - left subtree of a node only contains values less than itself
 - the right subtree of a node only contains values bigger than itself
 - each node has no more than 2 children

 Common Operations:
 - insert:      add a node
 - search:      find a given node
 - delete:      delete a node
 - is_valid?:   determine if binary tree is valid?
 - clear:       remove all nodes
 - clone:       copy the tree
 - contains?    returns a boolean if a cetain data is present
 - count:       returns node count
 - toString:    stringifys the tree
 - toArray:     arrayify the tree
 - traversing:  proOrder, inOrder, postOrder - walk the tree and visit each node
 -

binary tree code from [mediumpost](https://medium.com/@jessgreb01/data-structures-trees-and-ruby-2959c47ffa26)
`
class Node
  attr_reader :value
  attr_accessor :left, :right

  def initialize(value=nil)
	  @value = value
	  left = nil;
	  right = nil;
  end
end

#Binary Search Tree

class BinarySearchTree
	attr_accessor :root_node

	def initialize(root_value=nil)
		@root_node = Node.new(root_value)
	end

	#if you want to create a binary search tree
	def create_binary_search_tree(size)
		array_of_nums = (0..size).to_a.shuffle
		new_tree = BinarySearchTree.new
		array_of_nums.each do |num|
			new_tree.insert(num)
		end
		return new_tree
	end

	def insert(node, value)
		if node.value == value
			return node
		elsif value < node.value
			insert(node.left, value)
		elsif value > node.value
			insert(node.right, value)
		else
			return node = Node.new(value)
		end
	end

  def search(value, node)
  	return nil if node.nil?

  	if value == node.value
  		return node
  	elsif value > node.value
  		search(value, node.right)
  	else value < node.value
  		search(value, node.left) 		
  	end

  end

	def delete(value)
		node = search(value)
		if !node.nil?
			remove(node)
		end
	end

	def remove(node)
		if node.left.nil? && node.right.nil?
	    node = nil
	  elsif !node.left.nil? && node.right.nil?
	     node = node.left
	  elsif node.left.nil? && !node.right.nil?
	     node = node.right
	  else
	     node = delete_node_with_two_children(node)
	  end
	 node
	end

	def delete_node_with_two_children(node)
		min_node = find_min_node(node.right)
		replace_value(min_node, node)
		remove_min_node(min_node)
	end

	def find_min_node(node)
		if node.left.nil?
			min_node = node
			return min_node
		else
		  find_min(node.left)
		end
	end

	def replace_value(min_node, node)
		node.value = min_node.value
	end

	def remove_min_node(min_node)
		min_node = nil
	end

	def BST_is_valid?(node, min=-1.0/0.0, max=1.0/0.0)

		until node.left.nil? && node.right.nil?
			if min > node.value || max < node.value
				return false
			else  
				BST_is_valid?(node.left, min, node.value)  
				BST_is_valid?(node.right, node.value, max)
			end
		return true
	end
end

`

# MIN HEAP

Defined: a complete binary tree, where each node is smaller than its children.

Common Operations:
- Insert:
  - insert at the bottom right element and bubble up until

# Graph Searching

Depth-first search (DFS), start at the root and explore each branch completely before moving on to the next branch. (go deep before go whide)

Breadth-first search(BFS), start at the root, or some other sleected node and explore each neighb
