=begin
Mini Challenge #1
Full name greeting:
Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
=end


puts "Hello there, what is your first name, please?"
first_name = gets.chomp

puts "Do you have a middle name? If so please type."
middle_name = gets.chomp

puts "And finally your last name please?"
last_name = gets.chomp

puts "Thank you #{first_name} #{middle_name} #{last_name}"



=begin
Mini Challenge #2
Bigger, better favorite number:
Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.
=end

puts "What is your favorite number?"
puts "How about: #{gets.chomp.to_i + 1} as bigger and better favorite number"


=begin
Link to exercise files:
https://github.com/timurcatakli/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/timurcatakli/phase-0/blob/master/week-4/math/my_solution.rb


How do you define a local variable?
Simply by typing the variable name and an equals sign and the value.

How do you define a method?
By typing

def method_name(arguments)
end

What is the difference between a local variable and a method?
method is a block of code that you can call and local variable is a data that you can call.

How do you run a ruby program from the command line?
ruby file_name.rb

How do you run an RSpec file from the command line?
rspec rspec_filename

What was confusing about this material? What made sense?
Nothing was confusing.
=end