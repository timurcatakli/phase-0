# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  	if list_of_words.empty?
		return longest_string_length = nil
	else
		longest_string_length = list_of_words[0].length
		longest_string_element = list_of_words[0]

		q = list_of_words.length
		(0...q).each do |i|
			if list_of_words[i].length > longest_string_length
				longest_string_length = list_of_words[i].length
				longest_string_element = list_of_words[i]
			end
		end
		return longest_string_element
	end
end


# 'zzzzzzz' is 7 characters long
longest_string(['cat', 'zzzzzzz', 'apples'])  # => "zzzzzzz"