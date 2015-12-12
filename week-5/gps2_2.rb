# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
#  	INITIALIZE an empty hash = hash_item
#  	CREATE a default quantity variable default_quantity = 1
#  	ADD each items as keys and quantity = default_quantity as value.

# output: RETURN hash elements (key, value)

def list_create(items)
	hash_items = Hash.new
	default_quantity = 1

	items.split(' ').each do |x|
		hash_items[x] = default_quantity
	end
	return hash_items
end

groceries = list_create("carrots apples cereal pizza")


# Method to add an item to a list
# input: item name and optional quantity, hash_item
# steps:
# ADD item name to hash_item key
# IF no quantity passed
# 	ADD default_quantity to hash value
# ELSE
# 	ADD passed quantity as hash value
# END

# output: RETURN hash elements (key, value)

def list_add(hash_items, item_name, quantity = 1)
	hash_items [item_name] = quantity
	return hash_items
end

puts list_add(groceries, "banana")


# Method to remove an item from the list
# input: Hash key - hash_item
# steps:
# DELETE key value pair associated with has key from hash_item
# output: RETURN hash_item


def list_remove(hash_items, item_name)
	hash_items.delete(item_name)
	return hash_items
end

puts list_remove(groceries, "banana")

# Method to update the quantity of an item
# input: Hash key - hash value - hash_item 
# steps:
# UPDATE hash key & value pair in hash_item
# # output: RETURN hash_item

def list_update(hash_items, item_name, quantity)
	hash_items[item_name] = quantity
	return hash_items
end

puts list_update(groceries, "banana", 12)



# Method to print a list and make it look pretty
# input: hash_item
# steps:
# Format the list using titles, item name, etc.
# output: PRINT the list.


def list_print(hash_items)
		printf("%20s", '----------')
		printf("%20s", '----------')
		print "\n"
		printf("%20s", 'Item')
		printf("%20s", 'Quantity')
		print "\n"
		printf("%20s", '----------')
		printf("%20s", '----------')
		print "\n"		
	hash_items.each do |x,y|
		# printf "#{x} \t #{y} \n"
		printf("%20s", x.upcase)
		printf("%20s", y)
		print "\n"
		
		



	end

end

list_print(groceries)





