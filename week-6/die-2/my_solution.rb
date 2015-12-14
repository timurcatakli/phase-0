# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: Die#roll is called, it randomly returns one of these strings. If Die.new is passed an empty array, it should raise an ArgumentError.
# Steps:

# CREATE arr_argument = labels
# IF arr_argument is empty
# 	RAISE ArgmentError

# CREATE SIDES method
# 	RETURN the number of sides is equal to the length of arr_argument

# CREATE ROLL method
# 	ASSIGN random_number is equal to a number between 1 to length or arr_argument
# 	RETURN arr_argument element that has the index of random_number


# Initial Solution

# class Die
#   def initialize(labels)
#   	if labels.empty?
#   		raise ArgumentError
#   	end
#   	@arr_argument = labels
#   end

#   def sides
#   	@arr_argument.length
#   end

#   def roll
#   	random_number = rand(0...@arr_argument.length)
#   	@arr_argument[random_number]
#   end
# end

# # die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# die = Die.new(['A'])
# #die = Die.new()

# puts die.sides # still returns the number of sides, in this case 6
# puts die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly

# Refactored Solution
class Die
  def initialize(labels)
  	raise ArgumentError if labels.empty?
  	@arr_argument = labels
  	@sides = labels.length
  end

  def sides
  	@sides
  end

  def roll
  	@arr_argument[rand(0...sides)]
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
#die = Die.new()

puts die.sides # still returns the number of sides, in this case 6
puts die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly








# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# This one had an array passed as an argument...


# What does this exercise teach you about making code that is easily changeable or modifiable? 
# Code needs to be flexible as the passed arguments could be a string, integer or an array...

# What new methods did you learn when working on this challenge, if any?
# I felt more confident about class variables.

# What concepts about classes were you able to solidify in this challenge?
# Variables.























