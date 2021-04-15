class Stack
	class Node
		attr_accessor :data, :next_node

		def initialize(data)
			@data = data
		end
	end
		attr_accessor :head, :tail, :length

		def initialize
		@length = 0
		end

		def push(data)
			node = Node.new(data)
			if length.nil?
				@tail = node
			end

			node.next_node = @head
			@head = node
			@length += 1
		end

		def pop(data)
			node = @head
			@head = node.next_node
			if length == 0
				@tail = nil
				@length -= 1
			end
		end

		def full(data)
			if length == data
				puts "stack is full"
			else
				puts "not full"
			end
		end


		def display
			node = @head
			while node
				puts "#{node.data}"
				node = node.next_node
			end
		end
end

s = Stack.new()
s.push(1)
s.push(2)
s.push(3)
s.push(4)
s.display
puts
puts s.full(4)
puts s.full(2) 
puts
s.pop(4)
s.display
puts
s.pop(3)
s.display



