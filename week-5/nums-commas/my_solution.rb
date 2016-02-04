# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? an integer
# What is the output? (i.e. What should the code return?) an integer with
# What are the steps needed to solve the problem?
# Step 1 - define method that takes 1 argument
# Step 2 - separate numbers into an array so that they can be counted every 3 numbers and put in a comma at any such place(s)
# Step 3 - create array to hold reverse individual numbers from other array
# Step 4 - return numbers from second array as string
# .unshift will add a new item to the beginning of an array.

# 1. Initial Solution

def separate_comma(number)
  number_array = number.to_s.split(//)
  number_holder = Array.new
  counter = 0
  number_array.reverse.each do |x|
    if counter % 3 == 0 && counter != 0
      number_holder.unshift(x + ",")
    elsif
      number_holder.unshift(x)
    end
    counter += 1
  end
  puts number_holder.join
end

separate_comma(1000)

# 2. Refactored Solution

def separate_comma(number)
  number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end

# Turns integer into string, reverses it,globally replaces all instances of a pattern (here, in reverse order, match and capture the first 3 digits and ensure that there is at least one digit following last 3 digits: (/(\d{3})(?=\d)/) with back reference to first group and insert comma at every isntance, reverse it back

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# The most prominent way I could think of to split up an object was to put it into an array, as previously we were splitting up strings into arrays. Thus, I figured I could make this work for an integer in a similar way.
# Was your pseudocode effective in helping you build a successful initial solution?
# Yes and no. Yes in that I think it provided me with some pieces of the puzzle to solving this assignment, but it only got me so far. I couldn't figure out how to get it to start counting from the first digit closest to where the decimal point would be. However, I Googled it and found the Regex answer which also clued me in to using the reverse method. I ended up revising my pseudo code a few times in the process of researching how to solve this one.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# .to_s and .gsub. It did significantly change how the code worked. In the refactored solution there was no use of arrays, meanwhile in my original solution I used arrays to store the recombulated data.
# How did you initially iterate through the data structure?
# I reversed the order of the number's digits and used .each.
# Do you feel your refactored solution is more readable than your initial solution? Why?
# Yes and no. To begginers I think the orginal solution is much more readable. However, to people with some regex knowledge, the refactored solution may be more understandable.