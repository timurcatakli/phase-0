# Reverse Words
# In this challenge, you will write a method that takes a sentence as a string and reverses each word in the sentence.
# Ich bin ein Berliner = hcI nib nie renilreB


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# SPLIT argument string into words by space
# CREATE a new array (array_word) by split words
# FOR EACH array item update the value by reversed version of the string
# JOIN ARRAY items to create the result string.


# Initial Solution
def reversed_words(the_string)
	split_words_array = the_string.split
	counter = 0
	split_words_array.each do |k|
		split_words_array[counter] = k.reverse
		counter += 1
	end
	
	return split_words_array.join(" ")
end

p reversed_words("Ich bin ein Berliner")
# Ich bin ein Berliner = hcI nib nie renilreB

# Refactored Solution





# Reflection