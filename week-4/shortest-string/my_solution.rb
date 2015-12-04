# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
	# Your code goes here!
	if list_of_words.empty?
		return shortest_string_length = nil
	else
		shortest_string_length = list_of_words[0].length
		shortest_string_element = list_of_words[0]

		q = list_of_words.length
		(0...q).each do |i|
			#puts list_of_words[i] + " - " + list_of_words[i].length.to_s + " - " + shortest_string_length.to_s
			if list_of_words[i].length < shortest_string_length
				shortest_string_length = list_of_words[i].length
				shortest_string_element = list_of_words[i]
			end
		end
		return shortest_string_element
	end
end


# 'cat' is 3 characters long
puts shortest_string(['cat', 'a', 'zzzzzzz', 'aa', 'apples'])  # => "cat"

# '' is 0 characters long, but it's the only string
#puts shortest_string(['']) # => ''
#puts shortest_string([]) # => nil