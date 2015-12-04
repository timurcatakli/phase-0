# Smallest Integer

# I worked on this challenge [by myself, with: ].
# => by mysef

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
	small = list_of_nums[0]
	list_of_nums.each do |x|
		small = x if x < small
	end
	return small
end

#The same solution above could also be replaced with the one below...

def smallest_integerv2(list_of_nums)
  # Your code goes here!
	return list_of_nums.min
end


puts smallest_integer([0])       		# => 0
puts smallest_integer([1, 2, 3])       	# => 1
puts smallest_integer([0, -10, 10])   	# => -10
puts smallest_integer([-10, -20, -30]) 	# => -30
puts smallest_integer([]) 				# => nill

puts smallest_integerv2([0])       		# => 0
puts smallest_integerv2([1, 2, 3])       	# => 1
puts smallest_integerv2([0, -10, 10])   	# => -10
puts smallest_integerv2([-10, -20, -30]) 	# => -30
puts smallest_integerv2([]) 				# => nill