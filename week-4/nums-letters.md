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

```
>> 13.5 / 2.3
=> 5.869565217391305		#The result is a float
```

If one of the numbers is a float, then the result is always a float.
