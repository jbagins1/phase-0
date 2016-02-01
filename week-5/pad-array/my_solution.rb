# Pad an Array

# I worked on this challenge by with: Brett Ripley.

# I spent [] hours on this challenge.


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
  array1 = []
  array.each do |x|
    array1.push(x)
  end
  if array.length >= min_size
    array1
  else
    while array1.length < min_size
      array1.push(value)
    end
  return array1
  end
end

# 3. Refactored Solution



# 4. Reflection