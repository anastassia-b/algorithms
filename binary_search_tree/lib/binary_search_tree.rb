require 'bst_node'

class BinarySearchTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(value)
    @root = insert_into_tree(@root, value)
  end

  def insert_into_tree(tree_node, value)
    # base case
    return BSTNode.new(value) if tree_node.nil?

    #recursively call the left/right subtree
    #insert into left or right based on value.
    if value <= tree_node.value
      tree_node.left = insert_into_tree(tree_node.left, value)
    elsif value > tree_node.value
      tree_node.right = insert_into_tree(tree_node.right, value)
    end

    tree_node
  end

  def find

  end

  def delete

  end

  def maximum

  end

  def depth

  end

  def is_balanced?

  end

  def in_order_traversal

  end
end
