
array = [35, 22, 33, 55, 32, 899]
def find_min_and_max(array)
	min_and_max = array[0]
	array.each do |elem|
		if elem < min_and_max
			min_and_max = elem
		end
	end
	min_and_max
end
p find_min_and_max(array)
puts
#find odd_even_number
array = [1, 2, 3, 4, 5, 6]
def find_num(array)
	even_num = []
	odd_num = []
	array.each do |elem|
		if elem % 2 == 1
			even_num << elem
		end
	end
	even_num
end
p find_num(array)
puts 
def arr(array)
	odd = []
	even = []
array.each do |elem|
	elem % 2 == 0? even << elem : odd << elem
end
odd
even
end
p arr(array)
puts
array = [1, 2, 1, 1, 2, 2, 2, 1, 3, 4, 5, 6, 6]
def array_dup(array)
	result = []
	array.each do |elem|
		unless result.include?(elem)
			result << elem
        end
    end
    result
end
p array_dup(array)
puts
def num_count(array, num)
	count = 0
	array.each do |elem|
		if elem == num
			count += 1
		end
	end
	count
end
p num_count(array, 2)
puts
def reverse(array)
	result = []
	i = array.length-1
	array.each do |elem|
		result << array[i]
		i -= 1
	end
	result
end
p reverse(array)
puts
array = [1, 2, 3, 4, 5, 6, 7]
def array_rotate(array, rotation_times)
	result = []
	i = rotation_times
	while i < array.length
		result << array[i]
		i += 1
	end
	j = 0
	while j < rotation_times
		result << array[j]
		j += 1
	end
	result
end
p array_rotate(array, 2)
puts
array = [11, 9, 15, 8, 22, 4, 88, 77]
def find_second_largest_number(array)
	result = []
	result << array.shift
	for i in array
		index = 0
		while index < result.length
			if i <= result[index]
				result.insert(index, i)
				break
			elsif index == result.length - 1
				result.insert(index+1, i)
				break
			end
			index += 1
		end
	end
	result
end
p find_second_largest_number(array)
puts
string = "level"
def reverse(string)
	result = ""
	i = 0
	j = string.length-1
	while j >= i
		result << string[j]
		j -= 1
		if result == string
			flag = true
		else 
			flag = false
		end

	end
	flag
end
p reverse(string)
puts
string = "adcdegdefkh"
def substring(string, substring)
	word = string.chars
	substring = substring.chars
	substring_index = 0
	flag = false
	word.each_with_index do |elem, index|
		if elem == substring[substring_index]
			flag = true
			substring_index += 1
			break if substring[substring_index].nil?	
		else
			substring_index = 0
			flag = false
		end
	end
	flag
end
p substring(string, "def")
puts
def fibunacci(num)
	a = 0
	b = 1
	result = []
	while b < num
		result << b
		a,b = b,a+b
	end
	result
end
puts fibunacci(100)
puts
#data structure
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
				return
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
l.delete(15)
l.display
puts
class Doublylinkedlist
	class Node
		attr_accessor :data, :next_node, :prev_node
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
		node.prev_node = current_node
		self.current_node = node
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
			if node.data == data
				node.prev_node.next_node = node.next_node
				node.next_node.prev_node = node.prev_node
				return
			else
				node = node.next_node
			end
		end
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
	def reverse
			node = @root
			return if node.nil?
			while node
				print "->#{node.next_node.next_node.next_node.data}"
				node = node.prev_node
			end	
			print "\n"
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
l.display
l.insert(10)
l.display
l.insert(15)
l.display
l.insert(20)
l.display
puts l.reverse
l.display
puts l.search(10)
l.display
puts l.search(100)
l.display
l.delete(5)
l.display
l.delete(15)
l.display
puts
class Stack
	class Node
		attr_accessor :data, :next_node
		def initialize(data)
			@data = data
		end
	end
		attr_accessor :head, :tail, :length
		def push(data)
			node = Node.new(data)
			if length.nil?
				@tail = node
			end
			node.next_node = @head
			@head = node
			
		end
		def pop(data)
			node = @head
			if node.data == data
				@head = node.next_node
				node.next_node = nil
				return
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
s.pop(4)
s.display
puts
s.pop(3)
s.display
puts
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
			node.next_node = nil
			return
		end
	end
	def display
			node = @root
			return if node.nil?
			while node
				puts"#{node.data}"
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





	




