array = [22, 33, 22, 22, 1, 2, 2, 3]
def array_uniq(array)
result = []
array.each do |elem|
unless result.include?(elem)
result << elem
end
end
result
end
p array_uniq(array)
puts
def array_count(array, num)
count = 0
array.each do |elem|
	if elem == num
		count += 1
	end
end
count
end
p array_count(array, 22)
puts
array = [1, 2, 3, 4, 5]
def odd_position(array)
	result = []
	array.each do |index|
		if index % 2 != 0
			result << array[index]
		end
	end88
	result
end
p odd_position(array)
