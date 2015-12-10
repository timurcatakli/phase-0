def separate_comma(int)
	
	str = int.to_s
	length = str.length	
	result = ''

	cons = 0
	arr_str = []

	str.chars.reverse_each do |chr|
		if cons % 3 == 0 && cons != 0
			chr = chr + ","
			arr_str << chr
		else
			arr_str << chr
		end
		cons += 1
	end
	
	arr_str.reverse.each do |rhc|
	 	result += rhc
	end

	return result
end


puts separate_comma(4049)