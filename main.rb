require_relative 'lib/linked_list'

list = LinkedList.new
puts list.head_s
puts list
puts list.pop
puts list.size
puts list.tail
list.prepend(2)
list.append(3)
list.append(5)
puts list
puts list.head
puts list.head.next_node
list.prepend(8)
puts list.head
puts list.head.next_node
puts list.size
puts list.head_s
puts list.tail
puts list.at(3)
puts list
