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


# def fussy_method(x)
#   raise ArgumentError, "I need a number under 10" unless x < 10
# end




# class Die
#   def initialize(sides)
#   	if sides < 1
# 		raise ArgumentError
# 	end
# 	@sides = sides
#   end

#   def sides
#     @sides
#   end

#   def roll
#     rand(1..sides)
#   end
# end

# die = Die.new(2)
# puts die.roll
# puts die.sides

# 3. Refactored Solution
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
    rand(1..sides)
  end
end

die = Die.new(12)
puts die.roll
puts die.sides

# 4. Reflection

What is an ArgumentError and why would you use one?

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I used "raise" ArgumentError class.

What is a Ruby class?
Class is a  collection of method definitions. 

Why would you use a Ruby class?
Classes usually exist for the purpose of being instantiated—that is, of having objects created that are instances of the class.

What is the difference between a local variable and an instance variable?
It's a matter of scope. A local variable is only visible/usable in the method in which it is defined (i.e., it goes away when the method returns).

Where can an instance variable be used?
It's a matter of scope. A local variable is only visible/usable in the method in which it is defined (i.e., it goes away when the method returns).

An instance variable, on the other hand, is visible anywhere else in the instance of the class in which it has been defined