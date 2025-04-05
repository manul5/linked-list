require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end
  def append(value)
    node = Node.new
    node.value = value
    if @head.nil?
      @head = node
    else
      last_node = @head
      last_node = last_node.next_node while last_node.next_node
      last_node.next_node = node
    end
  end
end