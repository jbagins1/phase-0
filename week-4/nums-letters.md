What does puts do?

Puts returns nil and prints the output of hte console with a new line.

What is an integer? What is a float?

An integer is any whole number. A float is any non-whole number.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

When you divide an integer, the output is always a whole number. So for example, if you divide 9 by 2, you get 4. When you divide a float, you will get the exact answer. So 9 divided by 2 will output 4.5. Integers are like movie tickets, half a ticket will not get you into a movie so one only looks at how many whole movie tickets one has. Meanwhile floats act like regular numbers that we are used to. They can be inexact.

Hours in a year:
```ruby
def regular_year
  x = 24 * 365
end

def leap_year
  x = 24 * 366
end
```
Minutes in a decade:
```ruby
def minutes
  x = ((24 * 60) * 365) * 10
end
```

Link to 4.2.1: https://github.com/jbagins1/phase-0/blob/master/week-4/defining-variables.rb

Link to 4.2.2: https://github.com/jbagins1/phase-0/blob/master/week-4/simple-string.rb

Link to 4.2.3: https://github.com/jbagins1/phase-0/blob/master/week-4/basic-math.rb

How does Ruby handle addition, subtraction, multiplication, and division of numbers?

If not otherwise indicated, Ruby will multiply and divide first, then add or substract numbers.

What is the difference between integers and floats?

An integer is a whole number without any remainder. A float is is an inexact number.

What is the difference between integer and float division?

If integer division results in a remainder, it will only display the whole number not the remainder. Float division will display the exact number.

What are strings? Why and when would you use them?

Strings are collections of textual characters. Strings are used when you want display text (i.e. words).

What are local variables? Why and when would you use them?

Local variables can only be used in a certain part of a function. They are limited in scope. For example you can use them anywhere where you need a generic variable.

How was this challenge? Did you get a good review of some of the basics?

Yes it was a good review of the basics.