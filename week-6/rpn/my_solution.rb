# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# Pseudocode

# Input: a valid RPN expression 
# Output: its evaluation
# Steps:
# alc.evaluate('70 10 4 + 5 * -')

# number number operator = number operator number

# get rpn
# turn rpn string into array, split by space
# iterate each element
# if the element is not one of these: + - *
# then convert it into integer
#find for patters of num num operator, once found execute it and add it to the tally.
# return tally


# Initial Solution

# class RPNCalculator
# # Define your methods, here!
# 	def evaluate (rpn)
# 		@rpn_array = rpn.split
# 		until @rpn_array.length == 1 do
# 			run_math()
# 		end
# 		return @rpn_array[0].to_i
# 	end

# 	def calculation(num_string01, num_string02, operator)
# 		num_string01 = num_string01.to_i
# 		num_string02 = num_string02.to_i
# 		tally = 0

# 		if operator == '+'
# 			tally += num_string01 + num_string02
# 		elsif operator == '-'
# 			tally += num_string01 - num_string02
# 		elsif operator == '*'
# 			tally += num_string01 * num_string02
# 		end
# 		return tally
# 	end


# 	def run_math()
# 		i = 0
		

# 			@rpn_array.each do |x|
# 				if is_integer?(@rpn_array[i])
# 					# puts "#{@rpn_array[i]} is an integer"
# 					i += 1
# 				else
# 					# puts "#{@rpn_array[i]} is an operator & i = #{i}"
# 					@rpn_array[i] = calculation(@rpn_array[i-2], @rpn_array[i-1], @rpn_array[i]).to_s
# 					@rpn_array.delete_at(i-1)
# 					@rpn_array.delete_at(i-2)
# 					@rpn_array = @rpn_array
# 					# print "\n#{@rpn_array} \n"
# 					i = 2
			
# 				end
# 			end	


# 	end


# 	def run_math()
		
# 		#20 10 5 4 + * -
# 	end


# 	def is_integer?(test_value)
#     		test_value.to_i.to_s == test_value
#   	end
# end




# 4. Refactored Solution

class RPNCalculator
# Define your methods, here!
	def evaluate (rpn)
		@rpn_array = rpn.split
		convert_strings_to_integers(@rpn_array)
		until @rpn_array.length == 1 do
			run_math()
		end
		
		return @rpn_array[0].to_i
	end

	def calculation(num_string01, num_string02, operator)
		num_string01 = num_string01.to_i
		num_string02 = num_string02.to_i
		tally = 0

		if operator == '+'
			tally += num_string01 + num_string02
		elsif operator == '-'
			tally += num_string01 - num_string02
		elsif operator == '*'
			tally += num_string01 * num_string02
		end
		return tally
	end


	def run_math()
		i = 0
		

			@rpn_array.each do |x|
				if is_integer?(@rpn_array[i])
					# puts "#{@rpn_array[i]} is an integer"
					i += 1
				else
					# puts "#{@rpn_array[i]} is an operator & i = #{i}"
					@rpn_array[i] = calculation(@rpn_array[i-2], @rpn_array[i-1], @rpn_array[i]).to_s
					@rpn_array.delete_at(i-1)
					@rpn_array.delete_at(i-2)
					@rpn_array = @rpn_array
					# print "\n#{@rpn_array} \n"
					i = 2
			
				end
			end	


	end

	def convert_strings_to_integers(array_value)
		array_value.each do |i|
			if is_integer?(i)
				puts "#{i} is integer"
			else
				puts i
			end
		end
	end



	def is_integer?(test_value)
    		test_value.to_i.to_s == test_value
  	end
end


alc = RPNCalculator.new
#alc.evaluate('1 2 +')   # => 3
#alc.evaluate('2 5 *')   # => 10
#print  alc.evaluate('50 20 -') # => 30
print  alc.evaluate('1 2 3 4 + + +')
#alc.evaluate('20 10 5 4 + * -') # => 30
#alc.evaluate('70 10 4 + 5 * -') # => 0


# Reflection
