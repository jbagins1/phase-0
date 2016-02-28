# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Chunyu Ou.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 integers
# Output: whether the 16 integers are a valid credit card number
# Steps:
# Step 1 - set up CreditCard class
# Step 2 - set up initialize method to take an argument, the numbers of the credit card
# Step 3 - in the initialize method raise an argument if there aren't 16 digits in the number
# Step 4 - set up check_card method
# Step 5 - create an array with the numbers separated by each individual number in the sequence
# Step 6 - iterate thru the array and multiply the first item and every other item by 2.
# Step 7 - add all items of the array up together.
# Step 8 - check the total if it is multiple of ten return true otherwise false.

class CreditCard

  def initialize(numbers)
    @numbers = numbers.delete(' ')
    raise ArgumentError.new('Credit card number must be 16 digits long.') if @numbers.length != 16
  end

  def check_card
    dig_arr = @numbers.split("")
    dig_arr2 = dig_arr.reverse.map.with_index {|item, index| index % 2 != 0 ? item.to_i * 2 : item.to_i }.join.split("")
    summed_total = dig_arr2.inject(0) {|total, int| total.to_i + int.to_i }
    if summed_total % 10 == 0
      return true
    else
      return false
    end
  end
end

# Refactored Solution

class CreditCard

  def initialize(numbers)
    @numbers = numbers.to_s.delete(' ')
    raise ArgumentError, 'Credit card number must be 16 digits long.' if @numbers.length != 16
  end

  def check_card
    dig_arr = @numbers.split("").reverse.map.with_index {|item, index| index % 2 != 0 ? item.to_i * 2 : item.to_i }.join.split("")
    summed_total = dig_arr.inject(0) {|total, int| total.to_i + int.to_i }
    summed_total % 10 == 0 ? true : false
  end
end

# Reflection
# What was the most difficult part of this challenge for you and your pair?
# Coming up with the pseudo code because it was kind of confusing as to what procedures we wanted the code to perform.
# What new methods did you find to help you when you refactored?
# Not many. We basically used the same methods as we did in our original solution.
# What concepts or learnings were you able to solidify in this challenge?
# How to use the various methods that were implemented to solve the challenge.