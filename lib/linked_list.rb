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

  def prepend(value)
    node = Node.new
    node.value = value
    node.next_node = @head unless @head.nil?
    @head = node
  end

  def size
    count = 0
    node = @head
    while node
      count += 1
      node = node.next_node
    end
    "Size: #{count}"
  end

  def head_s
    @head ? "Head: #{@head.value}" : 'Head: nil'
  end

  def tail
    if @head.nil?
      'Tail: nil'
    else
      node = @head
      node = node.next_node while node.next_node
      "Tail: #{node.value}"
    end
  end

  def at(index)
    node = @head
    value = nil
    while node
      if index.zero?
        value = node.value
        break
      end
      node = node.next_node
      index -= 1
    end
    value ? "Value: #{value}" : 'Value: nil'
  end
  
  def pop
    node = @head
    while node
      if node.next_node.nil?
        value = node.value
        @head = nil
        return "Deleted: #{value}"
      elsif node.next_node.next_node.nil?
        value = node.next_node.value
        node.next_node = nil
        return "Deleted: #{value}"
      end
      node = node.next_node
    end
    'Deleted: nil'
  end
end