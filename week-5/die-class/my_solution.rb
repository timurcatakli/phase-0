# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode


# Input: New die which can be initialized with n number of sides.
# Output: Roll the die and return a random number
# Steps:

# GET the number of sides as an integer
# IF the integer is < 1
# 	RAISE an error as the sides can not be less than one
# ELSE
# =>  ROLL the dice and give a random number between 1-6
# =>  CREATE sides method to give the number of sides.
# END

# 1. Initial Solution


def fussy_method(x)
  raise ArgumentError, "I need a number under 10" unless x < 10
end
fussy_method(20)



class Die
  def initialize(sides)
  	if sides < 1
		raise ArgumentError
	end
	@sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..6)
  end
end

die = Die.new(2)
puts die.roll
puts die.sides

# 3. Refactored Solution







# 4. Reflection