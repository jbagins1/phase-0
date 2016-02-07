# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input: number of sides on a die
# Output: a number from between 1 and the number of sides
# Steps:
# Step 1 - create Die class
# Step 2 - set instance variable equal to number of sides
# Step 3 - issue error if sides are less than 1
# Step 4 - define method where you can ask the object how many sides it has
# Step 5 - define method where it will put to the console a random number between 1 and the number of sides


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("The number of die sides must be greater than 1")
    end
  end

  def sides
    @sides
  end

  def roll
    p rand(1..@sides)
  end
end

# 3. Refactored Solution
# None.
#
# 4. Reflection
# What is an ArgumentError and why would you use one?
# An ArgumentError is an error when the arguments are wrong and there isn't a more specific expcetion class. It allows one to raise ones own ArgumentError to notify users of the class if one thinks certain kinds of arguments aren't acceptable.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# Two new methods that I used were rand and raise. No real challenges except that I realized I needed raise to raise the ArgumentError and not just let ArgumentError stand alone.
# What is a Ruby class?
# A Ruby class mainly consists of a collection of method definitions. A class is a blueprint for a Ruby object.
# Why would you use a Ruby class?
# To scale creation of objects.
# What is the difference between a local variable and an instance variable?
# An instance variable stores information for individual objects and starts with an @. It allows a Ruby object to remember individual state. Local variables store infomortion outside of individual objects and do not start with an @. Local variables also cannot start with upper case letters, but instance variables can.
# Where can an instance variable be used?
# In Ruby objects.