# Pad an Array

# I worked on this challenge [by myself, with: Katie ]

# I spent [ 2 ] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array with minimum size, an integer, and a string
# What is the output? (i.e. What should the code return?) a new array padded with the updated number of elements added
# What are the steps needed to solve the problem?
# => SET up the method for pad
# => IF integer argument is less than or equal to the length of the array
#       RETURN the array
# => ELSIF integer argument equals to nil
#        RETURN array
#    ELSE
#        subtract array integer from array length (5-3=2)
#        Assign the result equals to new variable = n (n = 2)
#        REPEAT n times (n.times)
#           IF string is nil (string = nil)
#             push nil to end of array (2.times array nil)
#           ELSE push string to end of array (2.times array << "apple")
#           ENDIF
#        END
# => ENDIF
#
# array.pad([array], 5, "apple")
#
# pass an argument through method

# 1. Initial Solution
def pad(array, min_size, value = nil) #non - destructive

	array_modified = []

	if min_size <= array_modified.length || min_size == 0
		
		array_modified = array.map { |x| x}

	else
		array_modified = array.map { |x| x}

		(min_size - array_modified.length).times  {

				array_modified.push(value)
		}

		return array_modified

	end
  
end
arr_numbers = [1,2,3]
print pad(arr_numbers, 10, "apple")
# print arr_numbers.object_id
# puts "--------"
# print pad(arr_numbers, 10, "apple").object_id
# puts "--------"
# print arr_numbers
# puts "--------"



def pad!(array, min_size, value = nil) #destructive
	if min_size <= array.length || min_size == 0
		
		return array

	else
		(min_size - array.length).times  {

				array.push(value)
		}
		
		return array

	end

end





# 3. Refactored Solution
# I dont see anything to refactor...


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# Yes

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Actually no. Trying to figure out the object id of the new and old arrays was tricky...

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# No it didnt pass. Because when we assigned the array to a new object. It just copied the object id it didn't create new object.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# Actually no.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# Yes

# What is the difference between destructive and non-destructive methods in your own words?
# The value and the object id stays the same in non-destructive methods.