class Doublylinkedlist
	class Node
		attr_accessor :data, :next_node, :prev_node

		def initialize(data)
			@data = data
			@next_node = nil
			@prev_node = nil
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
		node.prev_node = current_node
		current_node.next_node = node
		self.current_node = node
	end

	def search(data)
		node = @root
		flag = false
		while node
			if node.data == data
				flag = true
				break
			else
				node = node.next_node
			end
		end
		flag
	end


	def delete(data)
		node = @root
		if node.data == data
			@root = node.next_node
			node.next_node = nil
			return
		end
		node = @root.next_node
		while node
			# if node.next_node.data == data
			if node.data == data
				node.prev_node.next_node = node.next_node
				node.next_node.prev_node = node.prev_node	

				# node.next_node = node.next_node.next_node
				# node.next_node.next_node = nil
				# node.next_node.next_node.prev_node = node
				# node.next_node
				# node.next_node.prev_node = node
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
			print "->#{node.data}"
			node = node.next_node
		end
		print "\n"
	end
end

l = Doublylinkedlist.new()
l.display
l.insert(5)
puts l.inspect
l.display
l.insert(10)
puts l.inspect
l.display
l.insert(15)
l.display
l.insert(20)
l.display
# l.delete(5)
# l.display
l.delete(10)
l.display
puts l.search(2100)
l.display
