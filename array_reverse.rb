array = [22, 33, 44, 54, 23, 25]
def array_reverse(array)
	result = []
	index = -1
	array.each do 
		result << array[index]
		index -= 1
	end
result
end
	p array_reverse(array)