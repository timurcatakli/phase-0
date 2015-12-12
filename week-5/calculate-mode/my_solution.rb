# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Katie Meyer ]

# I spent [2,5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode


# What is the input?
# Takes an Array of numbers or strings

# What is the output? (i.e. What should the code return?)
# Returns an Array of the most frequent values.

# What are the steps needed to solve the problem?
# CREATE an empty hash
# CREATE an empty array = arr_new

# ITERATE the array 
	
# 	IF the element exists in the hash then
# 		UPDATE hash value by one
# 	ELSE
# 		ADD first array element as key to hash
# 		ADD 1 as the value
# 	END
# CREATE VARIABLE mode = 0

# ITERATE hash values
# 	IF value > mode
# 	mode = value
# 	END

# IF mode = 1
# 	MAP array => arr_new
# ELSE	
# 	PUSH ALL hash keys to an array that has the value  = mode
# 	RETURN array
# END


# 1. Initial Solution
# def mode(arr)

# 	new_hash = Hash.new
# 	new_array = Array.new

# 	arr.each do |x|
# 		if new_hash.has_key?(x)
# 			new_hash[x] += 1
# 		else
# 			new_hash[x] = 1
# 		end
# 	end

# 	frequency = 0
# 	new_hash.each do |x,y|
# 		puts "#{x} - #{y}"
# 		if y > frequency
# 			frequency = y 
# 		end
# 	end

# 	puts "freq  = #{frequency}"
	
# 	new_hash.each do |x,y|
# 		if y == frequency
# 			new_array.push(x)
# 		end
# 	end
# 	return new_array
# end


# mode([1,2,3,3,4])         # => [3]
# mode([4.5, 0, 0])       # => [0]
# mode ([1, 2, 3, 4, 5, 5, 7])
#mode([1.5, -1, 1, 1.5]) # => [1.5]
# mode([1,1,2,2])         # => [1,2]
# mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
# mode(["who", "what", "where", "who"]) # => ["who"]




# 3. Refactored Solution

def mode(arr)

	new_hash = Hash.new
	new_array = Array.new

	arr.each do |x|
		if new_hash.has_key?(x)
			new_hash[x] += 1
		else
			new_hash[x] = 1
		end
	end

	frequency = 0
	new_hash.each_value { |y| frequency = y  if y > frequency }

	new_hash.each do |x,y|
		if y == frequency
			new_array.push(x)
		end
	end

	return new_array
end


# mode([1,2,3,3,4])         # => [3]
# print mode([4.5, 0, 0])       # => [0]
# print mode ([1, 2, 3, 4, 5, 5, 7])
#mode([1.5, -1, 1, 1.5]) # => [1.5]
# mode([1,1,2,2])         # => [1,2]
# mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
mode(["who", "what", "where", "who"]) # => ["who"]


# 4. Reflection


# Which data structure did you and your pair decide to implement and why?
# Hash as they are two dimensional

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# yes

# What issues/successes did you run into when translating your pseudocode to code?
# We were pretty much successful.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# .each
# Nope...







