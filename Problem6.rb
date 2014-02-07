#https://docs.google.com/document/d/146gCqBlJZkalX0boNa38z7UagzVxvAw1fQGfvvnr6I8/edit?pli=1#
def glob_match(filenames, pattern)
	#replaces * with .* and so forth and so on
 	pattern.gsub!(/[\*\?\.]/, '*' => '.*', '.' => '\.', '?' => '.')
 	#constructor for a Regexp called regex
 	regex = Regexp.new(pattern)
 	filenames.select do |filename|
 		#if a match is not found then nil is given
 		#matches a pattern to a string
    	filename =~ regex
	end
end
print glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"], "*part*rb?*")
