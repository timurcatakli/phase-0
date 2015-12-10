# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode


# Input: A list of student names
# Output: Make groups of 4,5 or at least 3
# Steps:


# 1. Initial Solution
COUNT the number of students = count

IF number of students < 3 ask them to find more students & break the code

SORT students by last name
CREATE groupx = 00 as temporary group name
ADD each student to hash list with key last name, first name and value groupx = student_hash


IF count mod 5 = 0
	SET number_of_groups5  = (count / 5 )
	SET number_of_groups4  = 0
	SET number_of_groups3  = 0

ELSE count mod 5 = 1
	SET number_of_groups5  = (count / 5 ) - 1
	SET number_of_groups4  = 0
	SET number_of_groups3  = 2

ELSE count mod 5 = 2
	SET number_of_groups5  = (count / 5 ) - 1
	SET number_of_groups4  = 1
	SET number_of_groups3  = 1

ELSE count mod 5 = 3
	SET number_of_groups5  = (count / 5 )
	SET number_of_groups4  = 0
	SET number_of_groups3  = 1

ELSE count mod 5 = 4
	SET number_of_groups5  = (count / 5 )
	SET number_of_groups4  = 1
	SET number_of_groups3  = 0
END



CREATE groups of 5
	LOOP 0 to (number_of_groups5 * 5)
		FOR EACH student update hash value = 'group' + '- A' + ROUND UP (hash index mod 5)
		END
	END

CREATE groups of 4
	LOOP 0 to (number_of_groups4 * 4)
		FOR EACH student update hash value = 'group' + '- B' + ROUND UP (hash index mod 4)
		END
	END

CREATE groups of 3
	LOOP 0 to (number_of_groups3 * 3)
		FOR EACH student update hash value = 'group' + '- C' + ROUND UP (hash index mod 3)
		END
	END

PRINT Student Hash











	




# 3. Refactored Solution







# 4. Reflection