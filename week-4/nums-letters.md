## Reflection

### What does puts do?

>> puts stands for >> put string and it returns nil and prints the output to the console with a new line.

### What is an integer? What is a float?

In Ruby, numbers without decimal points are called integers, and numbers with decimal points are called floats.

### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Best way is to give an example...

13 and 2 are integers. So the following will also give us an integer

```ruby
>> 13 / 2
=> 6		#The result is rounded down to make it an integer
```

13.5 and 2.3 are floats so the following will give us a float.

```ruby
>> 13.5 / 2.3
=> 5.869565217391305		#The result is a float
```
If one of the numbers is a float, then the result is always a float.

## Mini Challenges

### Hours in a year

```ruby
hours_in_one_day = 24
hours_in_a_year = hours_in_one_day * 365
puts "There are #{hours_in_a_year} hours in a year - ignoring leap years"
```

### Minutes in a decade

```ruby
decade_days = 10 * 365			#ignoring leap years
minutes_in_a_day = 1 * 60 * 24
puts "There are #{decade_days * minutes_in_a_day} minutes in a decade"
```


### Challenge "Defining Variables" Link
<a href="https://github.com/timurcatakli/phase-0/blob/master/week-4/defining-variables.rb">https://github.com/timurcatakli/phase-0/blob/master/week-4/defining-variables.rb</a>

### Challenge "Simple Strings Methods" Link
<a href="https://github.com/timurcatakli/phase-0/blob/master/week-4/simple-string.rb">https://github.com/timurcatakli/phase-0/blob/master/week-4/simple-string.rb</a>


### Challenge "Local Variables and Basic Arithmetical Operations" Link

<a href="https://github.com/timurcatakli/phase-0/blob/master/week-4/basic-math.rb">https://github.com/timurcatakli/phase-0/blob/master/week-4/basic-math.rb</a>


### How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles arithmetical operations just like a calculator.

### What is the difference between integers and floats?
Please see above... This is already explained.

### What is the difference between integer and float division?
Please see above... This is already explained.

### What are strings? Why and when would you use them?
Groups of letters in a program referred as strings. We use strings in order to push/pull data.

### What are local variables? Why and when would you use them?
To store the strings or other data in computer’s memory for a later use, you need to give the string a name. Programmers often refer to this process as assignment, and they call the names variables. A variable name can usually be just about any sequence of letters and numbers. We use variables in order to access assigned data for future use.

### How was this challenge? Did you get a good review of some of the basics?
It was a good opportunity to get introduced to rspec and basics of Ruby.

