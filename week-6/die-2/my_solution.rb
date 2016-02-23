# Die Class 2: Arbitrary Symbols

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array
# Output: a random string from the array
# Steps:
# Step 1 - set up a Class
# Step 2 - allow for input of an array and to raise an exception if the array is empty
# Step 3 - mix up elements in array
# Step 4 - select one of the numbers from the mixed up array
# Step 5 - display number of elements in array as the sides

# Initial Solution

class Die
  def initialize(array)
    @array = array
    if @array == []
      raise ArgumentError.new("The array cannot be empty.")
    end
  end

  def sides
    puts @array.size
  end

  def roll
    mixed_up_array = @array.shuffle
    puts mixed_up_array[0]
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides
die.roll

# Refactored Solution

class Die
  def initialize(array)
    @array = array
    if @array == []
      raise ArgumentError.new("The array cannot be empty.")
    end
  end

  def sides
    puts @array.size
  end

  def roll
    @array.shuffle!
    puts @array[0]
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides
die.roll

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The last one used integers as sides for the die, this one uses strings. Not much logic had to be changed in the roll method, this just had to be readjusted to select elements from the array instead of a random number.
# What does this exercise teach you about making code that is easily changeable or modifiable?
# That you can start with a certain problem, get to a near solution, then adjust that to get to the end solution.
# What new methods did you learn when working on this challenge, if any?
# I didn't learn any new methods, but I got to use raise and shuffle again.
# What concepts about classes were you able to solidify in this challenge?
# How to set up a class, using initialize, and how to use the methods available to the class.