# Pad an Array

# I worked on this challenge by with: David Ramirez.

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An array, a minimum size of array we want, and a default value for padding
# What is the output? (i.e. What should the code return?) An array that matches the minimum size requirements with inserted padding
# What are the steps needed to solve the problem?  First set up the method. Second add a test that checks if the length of the inputted argument array is greater or equal to the length of the array, if its not, then return the original array. Otherwise, if the length is less than the desired minimum length, insert the pad element of nil until minimum length is reached.

# 1. Initial Solution

def pad(array, min_size, value = nil)
  if array.length >= min_size
    return array
  elsif array.length <= min_size
    array.push(value) until array.length == min_size
  end
  return array
end

def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  elsif array.length <= min_size
    array.push(value) until array.length == min_size
  end
  return array
end

# 3. Refactored Solution

def pad(array, min_size, value = nil)
  array.push(value) while array.length < min_size
  return array
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# Yes.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Yes, the pseudocode plain english seemed to match up well with Ruby concepts we have addressed in the past like if conditionals.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Yes.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think its fairly readable in that it shows what each step is doing, i.e., each test. The refactored solution is less readable.
# What is the difference between destructive and non-destructive methods in your own words?
# Non-destructive methods don't modify the original data structure. Destructive methods modify the original data structure.