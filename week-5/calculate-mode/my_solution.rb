# Calculate the mode Pairing Challenge

# I worked on this challenge with: Joshua Lugo
# I spent [] hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# Write a method mode which takes an Array of numbers or strings as its input and returns an Array of the most frequent values.

# If there's only one most-frequent value, it returns a single-element Array.

# 0. Pseudocode

# What is the input? An array
# What is the output? An array of the most frequently occuring object
# What are the steps needed to solve the problem?
# Step 1 - set up a method that takes 1 argument, the array
# Step 2 - set up a hash to hold the objects from the array
# Step 3 - iterate through the array and assign each object to a key with an initial value of 1 and add 1 to the value each time the key is overriden
# Step 4 - figure out a way to separate out key(s) with the highest value

# 1. Initial Solution

def mode(array)
  hash = Hash.new(0)
  array.each { |key| hash[key] += 1 }
  hash = hash.select { |key, value| value == hash.values.max }
  return hash.keys
end

# 2. Refactored Solution
# We couldn't find any further way to refactor this down.

# 3. Reflection
# Which data structure did you and your pair decide to implement and why?
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Not as much as with the last pair. This one was more difficult conceptually.
# What issues/successes did you run into when translating your pseudocode to code?
# It was difficult figuring out a way to separate the keys with the highest values into an array.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used .each and .select. We couldn't find any other ones that seemed to work better or were more refactored.