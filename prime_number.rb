array = [22, 7, 5, 2, 5]

def find_prime(number)
	result = []
	array.each do |elem|
		if number % elem == 0
			result << elem
		end
	end
result	
end
p find_prime(number)


