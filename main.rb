require_relative 'lib/linked_list'

list = LinkedList.new
puts list.size
list.prepend(2)
list.append(3)
list.append(5)
puts list.head
puts list.head.next_node
puts list.head.next_node.next_node
list.prepend(8)
puts list.head
puts list.head.next_node
puts list.size