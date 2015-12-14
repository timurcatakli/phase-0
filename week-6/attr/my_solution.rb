#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_accessor :name
	def initialize
		@name = 'Timur Catakli'
	end
end


class Greetings
	def initialize
		@student = NameData.new
	end

	def hello
		p "Hello #{@student.name} ! How wonderful to see you today."
	end



end

greet = Greetings.new
greet.hello



# Reflection
# What are these methods doing?
# These methods are either returning information about class arguments or modifying class arguments.

# How are they modifying or returning the value of instance variables?
# Simply by assigning arguments to instance variables.

# What changed between the last release and this release?
# attr_reader :age was added therefore what_is_age method is not needed.

# What was replaced?
# See above.

# Is this code simpler than the last?
# Yeap

# What changed between the last release and this release?
# attr_writer :age added and therefore change_my_age method is not needed. I think I know where this is goinf...

# What was replaced?
# See above
# Is this code simpler than the last?
# Yeap but it can even be simpler.

# What is a reader method?
# It lets you read the initialized arguments

# What is a writer method?
# It lets you assign values to initialized arguments

# What do the attr methods do for you?
# It is a  shortcut for method definitions

# Should you always use an accessor to cover your bases? Why or why not?
# No because it creates a security risk..


# What is confusing to you about these methods?
# instance and local variables sometimes are confusing.