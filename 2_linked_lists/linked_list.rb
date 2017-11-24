class Node
  attr_reader :data
  attr_accessor :next

  def initialize(data = nil)
    @data = data
    @next = nil
  end

  def append_to_tail(data)
    end_node = Node.new(data)
    n = self
    until n.next == nil
      n = n.next
    end
    n.next = end_node
  end

end

class LinkedList
  attr_reader :head

  def initialize(head)
    @head = head
  end

  def append_to_tail(data)
    @head.append_to_tail(data)
  end
end
