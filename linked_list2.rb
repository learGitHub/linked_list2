class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list, previous=nil)
  node = list
  tail = nil

  while node != nil
    next_node = node.next_node
    node.next_node = tail
    tail = node
    node = next_node
  end 
  previous
end

#def reverse_list(list, previous=nil)
#  if list
#    next_node = list.next_node
#    list.next_node = previous
#    reverse_list(next_node, list)
#  end
#end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)

#node2.next_node = node3
#node1.next_node = node2
#node3.next_node = nil

reverse_list(node3)
print_values(node1)