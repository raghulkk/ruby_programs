class Linkedlist
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

	def delete(data)
		node = @root
		if node.data == data
			@root = node.next_node
			node.next_node = nil
			return
		end
		node = @root
		while node
			if node.next_node.data == data
				node.next_node = node.next_node.next_node
				break
			else
				node = node.next_node
			end
		end
	end

	def display
		node = @root
		return if node.nil?
		while node
			print "-> #{node.data}"
			node = node.next_node
		end
		print "\n"
	end
end

l = Linkedlist.new()
l.display
l.insert(5)
l.display
l.insert(10)
l.display
l.insert(15)
l.display
l.insert(20)
l.display
l.delete(5)
l.display
