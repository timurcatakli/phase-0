# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000
# 2345
# 3212 - MMMCCXII

def convert_to_roman(i)
	roman_numeral = ""
	i = i
	(i/1000).times {print "M"}				# 3 * M
	i = i % 1000							# i = 780
	
	(i/500).times {print "D"}				# 1 * C
	i = i % 500								# i = 280

	(i/100).times {print "C"}				# 2 * C
	i = i % 100								# i = 80

	(i/50).times {print "L"}				# 1 * L
	i = i % 50								# i = 30

	(i/10).times {print "X"}				# 3 * X
	i = i % 10								# i = 0

	(i/1).times {print "I"}					# 0 * I
end

puts "Enter the number to be converted to Roman Numeral"
t = gets.chomp.to_i
convert_to_roman(t)


# def convert_to_roman(i)
# 	roman_numeral = ""
# 	i = i
# 	(i/1000).times {print "M"}				# 3 * M
# 	i = i % 1000							# i = 212
# 	(i/100).times {print "C"}				# 2 * C
# 	i = i % 100								# i = 12
# 	(i/10).times {print "X"}				# 1 * X
# 	i = i % 10								# i = 2
# 	(i/1).times {print "I"}					# 2 * I

# end



