# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer called answer
# Output: true or false for game solution
# Steps:
# DEFINE an instance method GuessingGame#guess which takes an integer called guess as its input.
# RETURN
# 	:high if the guess is larger than the answer,
# 	:correct if the guess is equal to the answer,
# 	:low if theguess is lower than the answer.

# DEFINE an instance method GuessingGame#solved?
# 	RETURN true if the most recent guess was correct
# 	RETURN false otherwise.

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = answer
#     @solved = false
#   end

#   def guess(guess)
#   	if guess > @answer
#   		@solved = false
#   		return :high
#   	elsif guess < @answer
#   		@solved = false
#   		return :low
#   	else
#   		@solved = true
#   		return :correct
  		
#   	end
#   end

#   def solved?
#   	return @solved
#   end

#   # Make sure you define the other required methods, too
# end
# game = GuessingGame.new(10)
# p game.solved?
# p game.guess(5)
# p game.guess(20)
# p game.solved?
# p game.guess(10)
# p game.solved?

# Refactored Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @solved = false
  end

  def guess(guess)
  	if guess > @answer
  		@solved = false
  		return :high
  	elsif guess < @answer
  		@solved = false
  		return :low
  	else
  		@solved = true
  		return :correct
  		
  	end
  end

  def solved?
  	return @solved
  end

  # Make sure you define the other required methods, too
end
game = GuessingGame.new(10)
p game.solved?
p game.guess(5)
p game.guess(20)
p game.solved?
p game.guess(10)
p game.solved?




# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# I didnt understand this questions...

# When should you use instance variables? What do they do for you?
# if you dont need to use the variable other than the moethod itself than instance variables are great.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Week-6 and we are talking about flow control... Doesnt make sense... So I am skipping this question.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Return indicates the value plus no code executed after that. Method simply exists.




