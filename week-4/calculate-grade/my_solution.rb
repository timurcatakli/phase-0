# Calculate a Grade

# I worked on this challenge [by myself, with: ].
# Khamla Phimmachack

# Your Solution Below
def get_grade(score)

	if score >= 90
		return "A"
	elsif score >= 80
		return "B"
	elsif score >= 70
		return "C"
	elsif score >= 60
		return "D"
	else
		return "F"
	end
end

puts get_grade(69)

# returns "A" when the average is >= 90' do
# returns "B" when the average is >= 80' do
# returns "C" when the average is >= 70' do
# returns "D" when the average is >= 60' do
# returns "F" when the average is < 60' do
