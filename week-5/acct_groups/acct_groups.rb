# I worked on this challenge by myself

# I spent [24] hours on this challenge.

# 0. Pseudocode


# Input: A list of student names
# Output: Make groups of 4,5 or at least 3
# Steps:
# GET a list of students in a csv file.
# COUNT the number of students by counting each line except the header row = count

# IF number of students < 3 ask them to find more students & break the code

# MOD student count of 5
# 	IF the result is 0, this means that
# 		There will be (student count / 5) of Groups Of 5
# 		There will be 0 Groups of 4
# 		There will be 0 Groups of 3

# 	ELSE the result is 1
# 		There will be (student count / 5) - 1 of Groups Of 5
# 		There will be 0 Groups of 4
# 		There will be 2 Groups of 3

#  	ELSE the result is 2
# 		There will be (student count / 5) - 1 of Groups Of 5
# 		There will be 1 Groups of 4
# 		There will be 1 Groups of 3

# 	ELSE the result is 3
# 		There will be (student count / 5) of Groups Of 5
# 		There will be 0 Groups of 4
# 		There will be 1 Groups of 3

# 	ELSE the result is 4
# 		There will be (student count / 5) - 1 of Groups Of 5
# 		There will be 1 Groups of 4
# 		There will be 0 Groups of 3
# 	END

# CALCULATE number of students in each group by
# 	Number of students in groups of 5 = Groups of 5 * 5
# 	Number of students in groups of 4 = Groups of 4 * 4
# 	Number of students in groups of 3 = Groups of 3 * 3

# ITERATE EACH student in the csv list and do
# 	Assign a group number and pop the last array element and push group number


# 1. Initial Solution

	
# require 'csv'

# class CsvReader
	
# 	def initialize
# 		@countstudents = CSV.readlines("acct_groups.csv").count - 1
# 		if @countstudents < 3
# 			puts "Please find more students. We can not create a group for #{@countstudents} people."
# 		end
# 	end


# 	def get_data
# 		CSV.foreach("acct_groups.csv", headers: true) do |i|
# 			puts "#{i["Student Name"]} - #{i["Cohort"]} - #{i["Group"]}"
# 		end
# 	end


# 	def assign_groups
# 		@countmod5 = @countstudents % 5
		
# 		if @countmod5 == 0
# 			number_of_groups5 = (@countstudents / 5)
# 			number_of_groups4 = 0
# 			number_of_groups3 = 0
# 		elsif @countmod5 == 1
# 			number_of_groups5 = (@countstudents / 5) - 1
# 			number_of_groups4 = 0
# 			number_of_groups3 = 2
# 		elsif @countmod5 == 2
# 			number_of_groups5 = (@countstudents / 5) - 1
# 			number_of_groups4 = 1
# 			number_of_groups3 = 1
# 		elsif @countmod5 == 3
# 			number_of_groups5 = (@countstudents / 5)
# 			number_of_groups4 = 0
# 			number_of_groups3 = 1
# 		elsif @countmod5 == 4
# 			number_of_groups5 = (@countstudents / 5)
# 			number_of_groups4 = 1
# 			number_of_groups3 = 0
# 		end
# 		number_of_students5 = number_of_groups5 * 5
# 		number_of_students4 = number_of_groups4 * 4
# 		number_of_students3 = number_of_groups3 * 3		
		
# 		g = 1
# 		h = 1
# 		j = 1
# 		group_name = "A"
# 		customers_array = CSV.read('acct_groups.csv')
# 		customers_array.each do |customer|
# 			if customer != customers_array.first				

# 				if g <= number_of_students5					
# 					customer.pop
# 					customer.push("GROUP #{group_name}")					
# 					group_name.next! if g % 5 == 0
# 					g += 1
				
# 				elsif g > number_of_students5 && number_of_groups4 != 0					
# 					customer.pop
# 					customer.push("GROUP #{group_name}")
# 					group_name.next! if h % 4 == 0
# 					g += 1
# 					h += 1

# 				elsif g > (number_of_students5 + number_of_students4) && number_of_groups3 != 0					
# 					customer.pop
# 					customer.push("GROUP #{group_name}")										
# 					group_name.next! if h % 3 == 0
# 					g += 1
# 					h += 1
# 					j += 1
# 				end
# 			end
# 		end



# 		CSV.open('acct_groups.csv', 'w') do |csv_object|
# 			customers_array.each do |row_array|
# 				csv_object << row_array
# 			end
# 		end
# 	end


# end

# data01 = CsvReader.new
# data01.assign_groups



# 3. Refactored Solution
require 'csv'

class CsvReader
	
	def initialize
		@countstudents = CSV.readlines("acct_groups.csv").count - 1
		if @countstudents < 3
			puts "Please find more students. We can not create a group for #{@countstudents} people."
		end
	end


	def get_data
		CSV.foreach("acct_groups.csv", headers: true) do |i|
			puts "#{i["Student Name"]} - #{i["Cohort"]} - #{i["Group"]}"
		end
	end

	def arr_poppush(arr, group_name)
		arr.pop
		arr.push("GROUP #{group_name}")
	end

	def assign_groups
		@countmod5 = @countstudents % 5
		
		if @countmod5 == 0
			number_of_groups5 = (@countstudents / 5)
			number_of_groups4 = 0
			number_of_groups3 = 0
		elsif @countmod5 == 1
			number_of_groups5 = (@countstudents / 5) - 1
			number_of_groups4 = 0
			number_of_groups3 = 2
		elsif @countmod5 == 2
			number_of_groups5 = (@countstudents / 5) - 1
			number_of_groups4 = 1
			number_of_groups3 = 1
		elsif @countmod5 == 3
			number_of_groups5 = (@countstudents / 5)
			number_of_groups4 = 0
			number_of_groups3 = 1
		elsif @countmod5 == 4
			number_of_groups5 = (@countstudents / 5)
			number_of_groups4 = 1
			number_of_groups3 = 0
		end
		number_of_students5 = number_of_groups5 * 5
		number_of_students4 = number_of_groups4 * 4
		number_of_students3 = number_of_groups3 * 3		
		
		g = 1
		h = 1
		j = 1
		group_name = "A"



		customers_array = CSV.read('acct_groups.csv')
		customers_array.each do |customer|
			if customer != customers_array.first				

				if g <= number_of_students5					
					arr_poppush(customer, group_name)
					group_name.next! if g % 5 == 0
					g += 1
				
				elsif g > number_of_students5 && number_of_groups4 != 0					
					arr_poppush(customer, group_name)
					group_name.next! if h % 4 == 0
					g += 1
					h += 1

				elsif g > (number_of_students5 + number_of_students4) && number_of_groups3 != 0					
					arr_poppush(customer, group_name)					
					group_name.next! if h % 3 == 0
					g += 1
					h += 1
					j += 1
				end

			end
		end



		CSV.open('acct_groups.csv', 'w') do |csv_object|
			customers_array.each do |row_array|
				csv_object << row_array
			end
		end
	end


end

data01 = CsvReader.new
data01.assign_groups






# 4. Reflection
# What was the most interesting and most difficult part of this challenge?
# I love riddles. Comping up with the algorithm was the first challenging part and second was to write to inital code.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Definitely...

# Was your approach for automating this task a good solution? What could have made it even better?
# I think so. I am extremely tired so I am not sure what will make it better :-)

# What data structure did you decide to store the accountability groups in and why?
# I am using CSV file so that a non technical person can bring the results into excel etc. CSV are great for non technicals and technicals to use. 


# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I learnt to pull and push data from csv files. 