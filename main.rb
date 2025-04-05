require_relative 'lib/linked_list'

list = LinkedList.new
list.append(3)
list.append(5)
puts list.head
puts list.head.next_node