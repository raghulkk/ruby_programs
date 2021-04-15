class LinkedList

  class Node
    attr_accessor :data, :next_node

    def initialize(data)
      @data = data
    end
  end

  attr_accessor :current_node

  def insert(data)
    if current_node.nil?
      @current_node = Node.new(data)
      @root = current_node
      return
    end
    node = Node.new(data)
    current_node.next_node = node
    self.current_node = node
  end
  
  def display
    node = @root
    return if node.nil?
    while node
      print "#{node.data}"
      node = node.next_node
    end
    print "\n"
  end
end


l = LinkedList.new()
l.display
l.insert(5)
l.display
l.insert(10)
l.display
l.insert(1)
l.display
l.insert(11)
l.display
puts l.inspect