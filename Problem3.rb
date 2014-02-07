def count_words(string)
	# Ref http://stackoverflow.com/questions/6424278/how-to-count-the-words-of-a-string-in-ruby
	#then add in gsub for the win :)
	#takes the string, removes all but letters and white space, splits the string by white space
	# and then returns the number of places in the array
    string.gsub(/[^a-zA-Z' ']/,'').split(' ').count

end

puts count_words("A man, a plan, a canal -- Panama")
puts count_words("Madam, I'm Adam!")
puts count_words("Abracadabra")
