string = "abcdefghi"
def custom_find(string, substring)
	length = substring.length
	string.chars.each_with_index do |elem, index|
		return true if string[index, length] == substring
	end
false
end
p custom_find(string, "def")

def custom_find_index(string, substring)
	length = substring.length
	string.chars.each_with_index do |elem, index|
		return index if string[index, length] == substring
	end
end
p custom_find_index(string, "def") 

 

def find_substring str, substr
	string = str.chars
	substring = substr.chars
	substring_index = 0
	flag = false
	string.each_with_index do |element, index|
		if element == substring[substring_index]
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

p find_substring(string, "def")

