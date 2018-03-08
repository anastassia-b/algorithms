require 'byebug'

class BSTNode
  attr_reader :value, :left, :right

  # Phase 00.
  def initialize(value:, left: nil, right: nil)
    @value = value
    @left = left
    @right = right
  end

  # Phase 01.
  def self.insert(root, value)
    return BSTNode.new({value: value}) if root == nil
    # debugger
    if root.value > value
      # new_node = BSTNode.new({value: value})
      new_node = self.insert(root.left, value)
      BSTNode.new({value: root.value, left: new_node, right: root.right})

    elsif root.value < value
      # new_node = BSTNode.new({})
      new_node = self.insert(root.right, value)
      BSTNode.new({value: root.value, right: new_node, left: root.left})
    end

  end

  def self.find(root, value)
    return nil if root == nil
    return root if root.value == value

    if root.value > value
      self.find(root.left, value)
    else
      self.find(root.right, value)
    end
  end

  # helper methods for #delete:
  def self.maximum(root)
    return nil if root.nil?
    return root.value if root.right.nil?
    self.maximum(root.right)

  end

  def self.delete(root, value)
    return nil if root.nil?


    if root.value == value
      #if no kids
      return nil if (root.left.nil? && root.right.nil?)

      if root.left.nil?
        return root.right
      elsif root.right.nil?
        return root.left
      else
        max_left = self.maximum(root.left)
        new_left = delete(root.left, max_left)

        BSTNode.new(value: max_left, left: new_left, right: root.right)

      end

    elsif root.value > value
      new_left = self.delete(root.left, value)
      BSTNode.new({value: root.value, left: new_left, right: root.right})
    else
      new_right = self.delete(root.right, value)
      BSTNode.new({value: root.value, left: root.left, right: new_right})
    end
  end

  # Phase 02.
  def self.depth(root)
  end

  def self.is_balanced?(root)
  end

  def self.range(root, arr: [], min: nil, max: nil)
  end
end
