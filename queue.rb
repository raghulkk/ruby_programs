class Queue
	class Node
		attr_accessor :data, :next_node
		def initialize(data)
			@data = data
		end
	end
		attr_accessor :head
		def enqueue(data)
			if head.nil?
				@head = Node.new(data)
				@root = head
				return
			end
			node = Node.new(data)
			head.next_node = node
			self.head = node
		end
		def dequeue(data)
			node = @root
			if node.data == data
				@root = node.next_node
				node = node.next_node
				return
			end
		end
		def display
			node = @root
			return if node.nil?
			while node
				puts "->#{node.data}"
				node = node.next_node
			end
		end
end

q = Queue.new()
q.enqueue(1)
q.enqueue(2)
q.enqueue(3)
q.enqueue(4)
q.display
puts
q.dequeue(1)
q.display
puts
q.dequeue(2)
q.display







		 


