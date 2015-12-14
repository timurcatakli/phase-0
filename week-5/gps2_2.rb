# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#   INITIALIZE an empty hash = hash_item
#   CREATE a default quantity variable default_quantity = 1
#   ADD each items as keys and quantity = default_quantity as value.

# output: RETURN hash elements (key, value)

def list_create(items)
  hash_items = Hash.new
  default_quantity = 1

  # adding a slick way to initialize hash in one line, but not as readable
  # return items.split(' ').product([1]).to_h

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
#   ADD default_quantity to hash value
# ELSE
#   ADD passed quantity as hash value
# END

# output: RETURN hash elements (key, value)

def list_add(hash_items, item_name, quantity = 1)
  hash_items [item_name] = quantity
  return hash_items
end

list_add(groceries, "lemonade", 2)
list_add(groceries, "tomatoes", 3)
list_add(groceries, "onions", 1)
list_add(groceries, "ice cream", 4)



# Method to remove an item from the list
# input: Hash key - hash_item
# steps:
# DELETE key value pair associated with has key from hash_item
# output: RETURN hash_item


def list_remove(hash_items, item_name)
  hash_items.delete(item_name)
  return hash_items
end

list_remove(groceries, "lemonade")

# Method to update the quantity of an item
# input: Hash key - hash value - hash_item
# steps:
# UPDATE hash key & value pair in hash_item
# # output: RETURN hash_item

def list_update(hash_items, item_name, quantity)
  hash_items[item_name] = quantity
  return hash_items
end

list_update(groceries, "ice cream", 1)



# Method to print a list and make it look pretty
# input: hash_item
# steps:
# Format the list using titles, item name, etc.
# output: PRINT the list.


def list_print(hash_items)
  printf("%20s%20s\n", '---------------','---------------')
  printf("%20s%20s\n", 'Item','Quantity')
  printf("%20s%20s\n", '---------------','---------------')

  hash_items.each do |x,y|
    printf("%20s%20s\n", x.upcase, y)
  end

end

list_print(groceries)

=begin

What did you learn about pseudocode from working on this challenge?
pseudocode is a great way to see if your algorithm will work or not without investing time... This is what I learnt

What are the tradeoffs of using Arrays and Hashes for this challenge?
I dont think an array could be used for this challenge. Challenge itself requires two dimensions. Name and quantity. So using an array would make the challenge much more harder.


What does a method return?
The last evaluated statement in the method, or what you put after "return".


What kind of things can you pass into methods as arguments?
string, integer, array, boolean...

How can you pass information between methods?
By creating a variable that calls the first method and carries the value.

What concepts were solidified in this challenge, and what concepts are still confusing?
Hash concept is solidified.

=end












