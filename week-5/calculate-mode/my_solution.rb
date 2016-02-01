# Calculate the mode Pairing Challenge

# I worked on this challenge with: Ben Giamarino.

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?
# An array of numbers or strings.
# What is the output? (i.e. What should the code return?) An array of the most frequently occuring objects from the first array.
# What are the steps needed to solve the problem?
# Set up new hash.
# Go through the array and iterate through the array and assign each object to the new hash with the number of times that item appears.
# Check the new list for which item(s) appear the most.
# Put the items in their own list.
# Send back the list.


# 1. Initial Solution

def mode(list)
  mode_list = Hash.new
  list.each do |x|
    if mode_list.has_key?(x)
      mode_list[x] += 1
    else
      mode_list[x] = 1
    end
  end
  mode_num = 0
  mode_list.each {|k, v| mode_num = v if mode_num < v}
  mode_array = []
  mode_list.each {|k, v| mode_array << k if mode_num == v}
  return mode_array
end

# arr = [1, 2, 3, 3]
# mode_arr = mode(arr)
# mode_arr.each {|x| puts x}

mode([1,2,3,3])
mode([4.5, 0, 0])
mode([1.5, -1, 1, 1.5])
mode([1,1,2,2])
mode([1,2,3])
mode(["who", "what", "where", "who"])

# 3. Refactored Solution

I couldn't figure out how to refactor this anymore.

# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We used a hash because then we could separate the keys according to their value.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Yes.
# What issues/successes did you run into when translating your pseudocode to code?
# Figuring out how to separate the keys from their values.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# .each. I searched the Ruby docs for a while and couldn't find anything that looked it it applied to this situation.