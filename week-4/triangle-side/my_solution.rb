# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here! 
  triangle_sides_arr = [a, b, c].sort

  if a == 0  || b == 0 || c == 0 || (triangle_sides_arr[0] + triangle_sides_arr[1] ) < triangle_sides_arr[2]
  	return false
  else
  	return true
  end
end


puts valid_triangle?(0,0,0) # => false, because a triangle can't have 0-length sides
puts valid_triangle?(1,1,1) # => true, an equilateral triangle
puts valid_triangle?(3,4,5) # => true, a right triangle
puts valid_triangle?(4,3,5) # => true, the same right triangle
puts valid_triangle?(5,3,4) # => true, the same right triangle
puts valid_triangle?(10, 10, 100) #=> false, no such triangle exists