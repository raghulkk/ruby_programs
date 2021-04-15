def fizzbuzz(number)
	i =  1
	while i <= number
		if i % 15 == 0
		puts "fizzbuzz"
		elsif i % 3 == 0
		puts "fizz"
		elsif i % 5 == 0
		puts "buzz"
	end
	i += 1
	end
end
fizzbuzz(55)

			