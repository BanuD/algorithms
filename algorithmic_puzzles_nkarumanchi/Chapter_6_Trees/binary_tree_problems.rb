require_relative 'binary_trees.rb'

# PROBLEM 1: Find the maximum value in a binary tree with recursion.
# Solution: Find max in left subtree, then find max in right subtree, then compare them both with root.
def max_value_recursive(root)
  max_value = 0
  unless root == nil
    left_max = max_value_recursive(root.left)
    right_max = max_value_recursive(root.right)
    left_max > right_max ? max_value = left_max : max_value = right_max
    root.data > max_value ? max_value = root.data : max_value
  end
  max_value
end

# PROBLEM 2: Find the maximum value in a binary tree without recursion.
def max_value_iterative(binary_tree)
  root = binary_tree.root

end




#####################################################
# EXAMPLE TREE FOR TESTS
=begin

               1
          /         \
         2           3
       /   \       /   \
      4     5     6     7
     / \   / \   / \   / \
    8   9 10 11 12 13 14 15

=end

my_binary_tree = BinaryTree.new(1)

my_binary_tree.root.left  = BinaryTreeNode.new(2)
my_binary_tree.root.right = BinaryTreeNode.new(3)

my_binary_tree.root.left.left   = BinaryTreeNode.new(4)
my_binary_tree.root.left.right  = BinaryTreeNode.new(5)
my_binary_tree.root.right.left  = BinaryTreeNode.new(6)
my_binary_tree.root.right.right = BinaryTreeNode.new(7)

my_binary_tree.root.left.left.left    = BinaryTreeNode.new(8)
my_binary_tree.root.left.left.right   = BinaryTreeNode.new(9)
my_binary_tree.root.left.right.left   = BinaryTreeNode.new(10)
my_binary_tree.root.left.right.right  = BinaryTreeNode.new(11)
my_binary_tree.root.right.left.left   = BinaryTreeNode.new(12)
my_binary_tree.root.right.left.right  = BinaryTreeNode.new(13)
my_binary_tree.root.right.right.left  = BinaryTreeNode.new(14)
my_binary_tree.root.right.right.right = BinaryTreeNode.new(15)


# TESTS
p max_value_recursive(my_binary_tree.root) == 15
# p max_value_iterative(my_binary_tree.root).data == 15
