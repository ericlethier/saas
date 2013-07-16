def sort_word(word)
	return word.downcase.split('').sort.join
end

def combine_anagrams(words)

	if words.length == 0
		return Array.new
	end

	output = Array.new {Array.new} 
	
	words.each do|word|
		sorted_word = sort_word(word)

		word_exist = false
		output.each do|row|
			if (sort_word(row[0]) == sorted_word)
				row.push(word)
				word_exist = true
				break
			end
		end
		
		if word_exist == false
			output[output.length] = Array[word]
		end
		
	end
	return output
end



