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