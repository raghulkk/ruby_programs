string = "Raghul Kathiresan"
def string_reverse(string)
result = ""
j = string.length-1
while j >= 0
result << string[j]
j -= 1
end
result
end
p string_reverse(string)

def string_find(string, letter)
	result = ""
	string = string.chars
	string.each_with_index do |elem, index|
		if letter == elem
			result = index
	else
		result = "not found"
	end
end
result
end
p string_find(string, "z")
