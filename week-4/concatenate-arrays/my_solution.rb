# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].
# => myself

# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  array_2.each do |x|
  	array_1.push x
  end
  return array_1
end

puts array_concat([10, 4], ["apple"]) # => [10, 4, "apple"]




# Your Solution Below

def array_concatv2(array_1, array_2)
  array_1.concat(array_2)
end

puts array_concatv2([1,2,3], [4,5,6])   # => [1,2,3,4,5,6]