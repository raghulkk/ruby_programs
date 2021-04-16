class Stack
	class Node
		attr_accessor :data, :next_node

		def initialize(data)
			@data = data
		end
	end

	attr_accessor :head, :tail, :length, :max_length

	def initialize(max_length)
		@length = 0
		@max_length = max_length
	end

	def push(data)
		return 'Stack is full' if full?
		node = Node.new(data)
		if length.nil?
			@tail = node
		end
		node.next_node = @head
		@head = node
		@length += 1
		data
	end

	def pop(data)
		node = @head
		@head = node.next_node
		if length == 0
			@tail = nil
			@length -= 1
		end
		data
		display
	end

	def full?
		length == max_length
	end

	def set_max_length(new_length)
		@max_length = new_length
	end

	private 

	def display
		node = @head
		while node
			puts "#{node.data}"
			node = node.next_node
		end
	end
end


s = Stack.new(4)
puts s.full?
puts s.push(1)
puts s.push(2)
puts s.push(3)
puts s.push(4)
puts s.push(5)
s.send(:display)
puts
puts s.full?
puts
puts s.pop(4)
s.send(:display)
puts
puts s.pop(3)
s.send(:display)




