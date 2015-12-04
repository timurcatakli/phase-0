# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# => by myself
# I spent [#] hours on this challenge.
# => 2.5 pomodoros...
# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
	while true
		puts "What's there to hate about #{thing}?"
	end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#
# 2. What is the line number where the error occurs?
# => 171
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# => n/a
# 6. Why did the interpreter give you this error?
# => Because the while loop was not closed with the keyword "end" 

# --- error -------------------------------------------------------

south_park = "Cool Place"

# 1. What is the line number where the error occurs?
# => 37
# 2. What is the type of error message?
# => undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# => name is 'south_park'
# 4. Where is the error in the code?
# => N/A
# 5. Why did the interpreter give you this error?
# => The code is south_park, but it is not a call for a method or a variable assigment. 

# --- error -------------------------------------------------------

def cartman
	return nil
end
cartman()

# 1. What is the line number where the error occurs?
# => 52
# 2. What is the type of error message?
# => undefined method 'cartman'
# 3. What additional information does the interpreter provide about this type of error?
# => No method error
# 4. Where is the error in the code?
# => n/a
# 5. Why did the interpreter give you this error?
# => Because there is no such method in the code named 'cartman'

# --- error -------------------------------------------------------

def cartmans_phrase( phrase = '' )
	if phrase
		puts "#{phrase}"
	else
		puts "I'm not fat; I'm big-boned!"
	end
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 70
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments. Method expected 0 arguments but the method call passed 1 argument.
# 4. Where is the error in the code?
# => from errors line 74
# 5. Why did the interpreter give you this error?
# => Wrong number of arguments. Method expected 0 arguments but the method call passed 1 argument.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I hate Kyle")

# 1. What is the line number where the error occurs?
# => 93
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments
# 4. Where is the error in the code?
# => line 97
# 5. Why did the interpreter give you this error?
# => Method on line 93 expects an argument of 1 but 0 is passed.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# => 114
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => Expected 2 arguments but one is passed
# 4. Where is the error in the code?
# => Line 118
# 5. Why did the interpreter give you this error?
# => Expected 2 arguments but one is passed

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => 133
# 2. What is the type of error message?
# => Type Error
# 3. What additional information does the interpreter provide about this type of error?
# => String can not be coerced into FixNum
# 4. Where is the error in the code?
# => '*'
# 5. Why did the interpreter give you this error?
# => Because 5.*(FixNum) does not accept strings as arguments. In order to fix this error we need to put * 5 in front of the string.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 148
# 2. What is the type of error message?
# => Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => '/': divided by Zero
# 4. Where is the error in the code?
# => 
# 5. Why did the interpreter give you this error?
# => Because dividing a number by zero is not permitted...

# --- error -------------------------------------------------------

begin  
	require_relative "cartmans_essay.md"
rescue LoadError
	p 'Load Error'
else  
# Other exceptions
p 'Else Exception'
ensure
# Always will be executed
p 'Ensure Exception'
end


# 1. What is the line number where the error occurs?
# => 164
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => can not load such file
# 4. Where is the error in the code?
# => require_relative
# 5. Why did the interpreter give you this error?
# => Code requires the md file to be included but there is no such file.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
# No method or variable errors are hardest amongst other errors.

# How did you figure out what the issue with the error was?
# First, look at the line number. Then read the error message calmly and try to make sense out of it. After a while it becomes natural.

# Were you able to determine why each error message happened based on the code? 
# Yes, easily...

# When you encounter errors in your future code, what process will you follow to help you debug?
# Read the error calmly and then examine the code line...









