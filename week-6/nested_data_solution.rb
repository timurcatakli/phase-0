# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
p hash[:outer][:inner]["almost"][3]




# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
#p [nested_data]["array"][hash]
p nested_data[:array][1][:hash]



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.each do |element|
  if element.kind_of?(Array)
    element.each {|inner| p inner}
  else
    p element
  end
end


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.each do |element|
  if element.kind_of?(Array)
    element.each do |inner|
      if inner.kind_of?(Array)
        inner.each{|subinner| p subinner}
      else
        p inner
      end
    end
  else
    p element
  end
end


# Reflection

# What are some general rules you can apply to nested arrays?
# Always keep track of the index and levels. Rest is easy...

# What are some ways you can iterate over nested arrays?
# Using each do is the most popular. Also using if also helps you to see if nested element is an array

# Did you find any good new methods to implement or did you re-use one you were already familiar with?
# kind_of is a very neat method. I would use it again...

# What was it and why did you decide that was a good option?
# kind_of was effective to check if the nested element is an array or not




