# Iterate the array and find the max element: arr.max
# Push max element to a new array.
# Delete the max element from the array

def sort(unsorted_array)
	q =  unsorted_array.length
	sorted_array = []
	until q == 0
		sorted_array.push(unsorted_array.min)
		unsorted_array.delete(unsorted_array.min)
		q -= 1
	end
	return sorted_array
end



arr = ['e', 'd', 'b', 'c', 'a']
puts sort(arr)
