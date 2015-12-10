# Numbers to Commas Solo Challenge

# I spent [6] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer

# What is the output? (i.e. What should the code return?)
# A comma-separated integer as a string. Like this
# separate_comma(1000)    # => "1,000"
# separate_comma(1000000) # => "1,000,000"
# separate_comma(0)       # => "0"
# separate_comma(100)     # => "100"

# What are the steps needed to solve the problem?
# CONVERT given integer to string and assign it to istring
# COMPUTE string length and assign it to ilength
# CREATE an empty array = arr_string

# ITERATE each string character in reverse order
# IF the string character is evenly divisible by 3 and NOT the first array character
#	INSERT comma to the character
#	PUSH it to arr_string
# ELSE 
#	PUSH it to arr_string
# END
# REVERSE arr_string and print characters



# 1. Initial Solution
# def separate_comma(int)
	
# 	str = int.to_s
# 	length = str.length	
# 	result = ''

# 	cons = 0
# 	arr_str = []

# 	str.chars.reverse_each do |chr|
# 		if cons % 3 == 0 && cons != 0
# 			chr = chr + ","
# 			arr_str << chr
# 		else
# 			arr_str << chr
# 		end
# 		cons += 1
# 	end
	
# 	arr_str.reverse.each do |rhc|
# 	 	result += rhc
# 	end

# 	return result
# end


# puts separate_comma(4049)
# puts separate_comma(13155)
# puts separate_comma(538542)
# puts separate_comma(1234)
# puts separate_comma(37167004)
# puts separate_comma(561966179)
# puts separate_comma(5874175451)
# puts separate_comma(18528491078)
# puts separate_comma(738236319073)
# puts separate_comma(2028990772450)
# puts separate_comma(83691472341522)
# puts separate_comma(190508477190784)


# 2. Refactored Solution
def separate_comma(int)

	formatted_int = int.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
	return formatted_int

end


puts separate_comma(4049)
puts separate_comma(13155)
puts separate_comma(538542)
puts separate_comma(1234)
puts separate_comma(37167004)
puts separate_comma(561966179)
puts separate_comma(5874175451)
puts separate_comma(18528491078)
puts separate_comma(738236319073)
puts separate_comma(2028990772450)
puts separate_comma(83691472341522)
puts separate_comma(190508477190784)

# 4049
# 13155
# 538542
# 1234
# 37167004
# 561966179
# 5874175451
# 18528491078
# 738236319073
# 2028990772450
# 83691472341522
# 190508477190784



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I opened up an excel file and tried to find a pattern to come up with an algorithm

# Was your pseudocode effective in helping you build a successful initial solution?
# Yes


# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I am a big believer of regex and I knew that there has to be a solution. SO that is what I did...


# How did you initially iterate through the data structure?
# by using each

# Do you feel your refactored solution is more readable than your initial solution? Why?
# 24 lines of code versus 2 lines of code. You decide.