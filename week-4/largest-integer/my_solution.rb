# Largest Integer

# I worked on this challenge [by myself, with: ].
# => myself
# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
	large = list_of_nums[0]
	list_of_nums.each do |x|
		large = x if x > large
	end
	return large
end

#The same solution above could also be replaced with the one below...

def largest_integerv2(list_of_nums)
  # Your code goes here!
	return list_of_nums.max
end


puts largest_integer([0])       		# => 0
puts largest_integer([1, 2, 3])       	# => 3
puts largest_integer([0, -10, 10])   	# => 10
puts largest_integer([-10, -20, -30]) 	# => -10
puts largest_integer([]) 				# => nill


puts largest_integerv2([0])       		# => 0
puts largest_integerv2([1, 2, 3])       # => 2
puts largest_integerv2([0, -10, 10])   	# => 10
puts largest_integerv2([-10, -20, -30]) # => -10
puts largest_integerv2([]) 				# => nill
