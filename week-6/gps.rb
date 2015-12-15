
def serving_size_calc(item_to_make, num_of_ingredients)

  #Initialize Hash
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  #check to see whether item is valid item
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  num_items = num_of_ingredients / serving_size


  output = "Calculations complete: Make #{num_items} of #{item_to_make}"


  while remaining_ingredients > 0 # remaining ingredients = 5
    #find the largest thing we can make's size
    best_avail = library.select {|k, v| remaining_ingredients >= v}.values.max
    # see how many we can make of them
    num_leftovers = remaining_ingredients / best_avail
    #see what the item is
    extra_item = library.select {|k, v| v == best_avail}.keys[0]
    #add item to output
    output += " and #{num_leftovers} of #{extra_item}"
    #decrement remaining ingredients
    remaining_ingredients -= num_leftovers*best_avail
  end
  
  output

end

# p serving_size_calc("banana", 7)
p serving_size_calc("pie", 12)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

  
###integer math - mod
### reduce & collecter inject
