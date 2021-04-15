string = "abcdeghdef"
def find_char(string, substring)
	string = string.chars
	substring = substring.chars
	substring_index = 0
	flag = false
	string.each do |elem|
		if elem == substring[substring_index]
			flag = true
			substring_index += 1
			break if substring[substring_index].nil?
		else
			substring_index = 0
			flag
		end
	end
	flag
end
p find_char(string, "xyz")