# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode




# Initial Solution

def in_words(number)
	zero_twenty = %w[zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty]
	twenty_hundred = ['zero', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety', 'one hundred']
	return zero_twenty[number] if (0..20).include?(number)
	return twenty_hundred[number / 10] + ' ' + zero_twenty[number % 10]
end

# p in_words(3)
# p in_words(0)
# p in_words(9)
# p in_words(11)
# p in_words(12)
# p in_words(13)
# p in_words(14)
# p in_words(27)
# p in_words(92)
# p in_words(55)
# p in_words(63)
# p in_words(72)
# p in_words(85)
# p in_words(97)
# p in_words(23)
# p in_words(31)
# p in_words(67)

# Refactored Solution






# Reflection