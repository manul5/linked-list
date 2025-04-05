class Node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end

  def to_s
    "Value: #{@value}"
  end
end