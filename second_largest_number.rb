array = [11, 22, 12, 99, 8, 15, 999]
def array_sort(array)
	result = []
	result << array.shift
	for i in array
		index = 0
	while index < result.length
		if i <= result[index]
			result.insert(index,i)
			break
		elsif index == result.length-1
			result.insert(index+1,i)
			break
		end
		index += 1
	end
end
result
end
p array_sort(array)