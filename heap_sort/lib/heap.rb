require 'byebug'

class BinaryMinHeap
  attr_reader :store, :prc

  def initialize(&prc)
    @store = []
  end

  def count
    @store.length
  end

  def extract
    value = @store.shift
    last_el = @store.pop
    @store.unshift(last_el)
    BinaryMinHeap.heapify_down(@store, 0)
    value
  end

  def peek
    @store[0]
  end

  def push(val)
    @store = BinaryMinHeap.heapify_up(@store.push(val), count)
  end

  public
  def self.child_indices(len, parent_index)
    #refactor later
    ch_idx = []
    2.times do |i|
      idx = 2 * (parent_index) + (i+1)
      ch_idx << idx if idx < len
    end
    ch_idx
  end

  def self.parent_index(child_index)
    raise "root has no parent" if child_index <= 0
    (child_index - 1) / 2
  end

  def self.heapify_down(array, parent_idx, len = array.length, &prc)
    prc ||= Proc.new { |a, b| a <=> b }

    children_idx = self.child_indices(len, parent_idx)
    return array if children_idx.empty?
    if children_idx.length == 1
      child_idx = children_idx.first
      child_value = array[child_idx]
    else
      child1, child2 = array[children_idx[0]], array[children_idx[1]]
      if prc.call(child1, child2) == -1
        child_value = child1
        child_idx = children_idx[0]
      else
        child_value = child2
        child_idx = children_idx[1]
      end
    end

    parent_value = array[parent_idx]
    if prc.call(child_value, parent_value) == -1
      array[child_idx], array[parent_idx] = parent_value, child_value
      self.heapify_down(array, child_idx, len, &prc)
    end
    array
  end

  def self.heapify_up(array, child_idx, len = array.length, &prc)
    prc ||= Proc.new { |a, b| a <=> b }

    while child_idx > 0
      p_idx = self.parent_index(child_idx)
      if prc.call(array[child_idx], array[p_idx]) == -1
        array[child_idx], array[p_idx] = array[p_idx], array[child_idx]
      end
      child_idx -= 1
    end
    array
  end
end
