#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  #remove delimitors, reverse, compare with initial
  puts "Initial str: "+ str
  puts "Downcase str: " + str.downcase
  puts "Regex1: " + str.downcase.gsub(/[^[:alnum:]]/, "")
  puts "Reversed str: "+ str.downcase.reverse
  puts "Regex2: " + str.downcase.reverse.gsub(/[^[:alnum:]]/, "")
  puts ""
  if (str.downcase.gsub(/[^[:alnum:]]/, "") == str.downcase.reverse.gsub(/[^[:alnum:]]/, ""))
	return true
  else
	return false
  end
end

def count_words(str)
  puts "Initial Str: " + str
  puts "Split: #{str.downcase.split(%r{\b*\W})}"
  word_arr = str.downcase.split(%r{\b*\W})
  
  word_hash=Hash.new
  
  word_arr.each do|word|
	puts "#{word}"
	if word_hash.has_key?(word)
		word_hash[word] = word_hash[word] + 1
	else
		word_hash[word] = 1
	end
  end
  return word_hash
end


#the code below this line will test your functions.  You should remove everything below this line prior to submitting your file


test_str = "there goes the neighborhood"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "Madam, I'm Adam"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


#test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"
test_str="Doo bee doo bee doo"
word_count = count_words test_str
puts word_count
