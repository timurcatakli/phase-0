# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: Valid (True) or Invalid (false) credit card number
# Steps: 

# First convert numbers to an array set
# do an each and dounle 1,3,5,7 index number element and keep the tally... if the doubled value is more than 1 digits then split and add to tally.




# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
	def initialize(cc_number)
		@cc_number = cc_number
		raise ArgumentError.new("Credit card length is not 16 digits") if cc_number.to_s.length != 16
	end

	def split_digits(two_digit)
		return (two_digit % 10) + two_digit / 10
	end

	def check_card
		cc_arr = @cc_number.to_s.chars.map(&:to_i)
		#print cc_arr
		#print "\n"

		cc_arr.each_with_index do |value, i|
			#puts "index: #{i} - value: #{value}"
			if i.even?
				cc_arr[i] = value + value
			end
		end
		#print cc_arr
		#print "\n"

		tally = 0
		cc_arr.each do |j|
			if j > 9
				tally += split_digits(j)
			else
				tally += j
			end
		end
		if tally % 10 == 0
			return true
		else
			return false
		end
	end

end

cc = CreditCard.new(4563960122001999)
print cc.check_card

# Refactored Solution

class CreditCard
  def initialize(cc_number)
    @cc_number = cc_number
    raise ArgumentError.new("Credit card length is not 16 digits") if cc_number.to_s.length != 16
  end

  def split_digits(two_digit)
    return (two_digit % 10) + two_digit / 10
  end

  def check_card
    cc_arr = @cc_number.to_s.chars.map(&:to_i)

    tally = 0
    cc_arr.each_with_index do |value, i|
      
      if i.even?
        tally += split_digits(2 * value)
      else
        tally += split_digits(value)
      end
      
    end
    
    
    return true if tally % 10 == 0
    return false
  end

end

cc = CreditCard.new(4563960122001999)
print cc.check_card








# Reflection
# What was the most difficult part of this challenge for you and your pair?
# Splitting the digits and adding them together

# What new methods did you find to help you when you refactored?
# Unfortunately nothing new was found

# What concepts or learnings were you able to solidify in this challenge?
# Array iteration and instance variables.






