#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  if (str.downcase.gsub(/[^[:alnum:]]/, "") == str.downcase.reverse.gsub(/[^[:alnum:]]/, ""))
	return true
  else
	return false
  end
end

def count_words(str)
  word_arr = str.downcase.split(%r{\b*\W})
  word_arr.delete("")
  word_hash=Hash.new
  
  word_arr.each do|word|
	if word_hash.has_key?(word)
		word_hash[word] = word_hash[word] + 1
	else
		word_hash[word] = 1
	end
  end
  return word_hash
end
