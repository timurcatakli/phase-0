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
	(i/1000).times {print "M"}				#3
	((i%1000)/100).times {print "C"}		#212
	

end


convert_to_roman(3212)



