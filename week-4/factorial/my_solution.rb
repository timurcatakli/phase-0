# Factorial
# I worked on this challenge [by myself, with: ].
# Input - positive integer

# Process
# Check if integer is positive
# If negative return 0
# If positive
# 	Loop i * (i-1) * (i-2) * (i-3) until i = 0	
# Output - factorial i*(i-1) until i = 0


# Your Solution Below
def factorial(number)
	# Your code goes here
	sum = 1 # local variable
	if number < 0
		return 0
	else
		(1..number).each do |y|
			sum = sum * y
		end
		return sum
	end
end
puts factorial(-10)
puts factorial(0)
puts factorial(1)
puts factorial(5)
puts factorial(10)






