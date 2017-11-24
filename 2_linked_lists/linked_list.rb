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

  def delete(data)
    n = @head

    if n.data = data
      @head = @head.next #shifted head to next node
      return self
    end

    while n.next != nil
      if (n.next.data == data)
        n.next = n.next.next;
        return self #head didn't change
      end
      n = n.next
    end

    return self;
  end

  def to_s
    n = @head
    until n == nil
      print "#{n.data} "
      n = n.next
    end
    puts "\n"
  end
end

head = Node.new(1)
list = LinkedList.new(head)
list.append_to_tail(2)
list.append_to_tail(3)
list.append_to_tail(4)
puts list
