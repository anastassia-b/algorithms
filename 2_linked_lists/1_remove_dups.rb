# Remove duplicates from an unsorted linked list
# Will assume singly linked list.
require 'byebug'
require_relative 'linked_list'

class LinkedList
  def remove_dups
    seen = [] #or hash for ease of include? or a set.
    n = self.head
    until n.next == nil
      puts n.data
      seen << n.data
      # it is a duplicate
      if seen.include?(n.next.data)
        # byebug
        puts "REMOVING #{n.next.data}"
        puts "n.next = #{n.next.data}"
        puts "n.next.next = #{n.next.next.data}"
        n.next = n.next.next # delete the duplicate
        #ah, I see the error. Need to refactor.
      end
      n = n.next
    end
    # puts seen
    self
  end
end


# tests
list = LinkedList.build_list([4, 1, 2, 4, 5, 3, 4, 2, 5])
puts "before: ", list
puts "after: ", list.remove_dups #[4, 1, 2, 5, 3]

#Hints:
# Try a hash table. Should be able to do in a single pass of the linked list.
# Without extra space, you'll need O(N^2) time. Try using two pointers, where the second one searches ahead of the first one.
# Write psuedocode first.
