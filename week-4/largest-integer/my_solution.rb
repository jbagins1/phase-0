# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def largest_integer(list_of_nums)
  y = list_of_nums[0]
  list_of_nums.each do |x|
    if x > y
      y = x
    end
  end
  y
end

def largest_integer(list_of_nums)
  list_of_nums.sort!
  list_of_nums.sort[-1]
end