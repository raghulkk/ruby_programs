array = [1, 2, 3, 4, 5, 6, 7]
def array_rotate(array, rotation_times)
	result = []
	i = rotation_times
	j = array.length
	while i < j
		result << array[i]
		i += 1
	end
	start = 0
	while start < rotation_times
		result << array[start]
		start += 1
	end
	result
end
p array_rotate(array, 3)
