def palindrome?(string)
	# Ref is http://coderbyte.com/CodingArea/Questions/Q/?q=best-way-to-do-palindrome-2-challenge
    str = string.gsub(/[^a-zA-Z]/, '').downcase # gsub takes only alpha charecters while downcase lowercasses everything
    str == str.reverse #symple check if string is palindrome
end
#tests for palindrome given by write up
#puts adds a new line to the end of each output
#print does not add a new line
#print also outputs all cheracters
#puts just prints out 1 and 2 for [nil, 1, 2]
puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("Madam, I'm Adam!")
puts palindrome?("Abracadabra")