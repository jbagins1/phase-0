# Pad an Array

# I worked on this challenge by with: Brett Ripley.

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An array, a minimum size of the array, and optional default.
# What is the output? (i.e. What should the code return?) An array matching the minimum size requirements padded optional default.
# What are the steps needed to solve the problem?
# Set up a method that takes 3 arguments. If the array is length is greater than or equal to the minimum size return the array. However, if the array's length is less than the minimum size then the method should increase the size of the array, insert default values, and return the array.

# 1. Initial Solution

def pad!(array, min_size, value = nil)
  if array.length >= min_size
    array
  else
    while array.length < min_size
      array.push(value)
    end
  end
  return array
end

def pad(array, min_size, value = nil)
  new_array = []
  array.each do |x|
    new_array.push(x)
  end
  if array.length >= min_size
    new_array
  else
    while new_array.length < min_size
      new_array.push(value)
    end
  return new_array
  end
end

# 3. Refactored Solution

I couldn't figure out how to refactor this any further.

# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# Yes.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Somewhat. Its tough because I feel like I know what I want the code to do, but its still difficult to find the proper syntax to employ.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Yes.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# No.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think its fairly readable. Yes we chose descriptive variable names.
What is the difference between destructive and non-destructive methods in your own words?
# Non-destructive methods don't modify the original data structure. Destructive methods modify the original data structure.