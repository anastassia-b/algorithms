require_relative "heap"

class Array
  def heap_sort!

  end
end

# Note, we don't want to create a new array, we want to do it in place.
# Not this:
# def heap_sort!
#   heap = BinaryMinHeap.new
#   self.each {|el| heap.push(el) }
#   p heap.store
# end

# [4, 2, 1, 3, 5, 7, 8, 9] => [1, 2, 3, 4, 5, 7, 8, 9]
# We could do heapify down until sorted. Go through each index.
