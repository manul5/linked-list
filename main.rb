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
list2 = LinkedList.new
list2.append('dog')
list2.append('cat')
list2.append('parrot')
list2.append('hamster')
list2.append('snake')
list2.append('turtle')
list2.insert_at('tralalero', 5)
puts list2
