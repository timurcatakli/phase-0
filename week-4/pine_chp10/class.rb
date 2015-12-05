class Integer
	def to_roman
		i = self
		(i/1000).times {print "M"}
		i = i % 1000
		
		(i/500).times {print "D"}
		i = i % 500

		(i/100).times {print "C"}
		i = i % 100

		(i/50).times {print "L"}
		i = i % 50

		(i/10).times {print "X"}
		i = i % 10

		(i/5).times {print "V"}
		i = i % 5

		(i/1).times {print "I"}
	end
end

#235.to_roman