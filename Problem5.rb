def combine_anagrams(words)
	#Do not need return or the variable
	#group_by{ |obj| block} -> hash
	tuples = words.group_by{|word| word.chars.sort{ |a , b| a.casecmp(b) }.join}.values
	#return tuples
	
end

#big diff between print and puts
print combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])
