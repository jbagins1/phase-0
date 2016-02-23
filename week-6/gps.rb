
Peter Kang
Gary Sperka

# Bakery Serving Size portion calculator.
# Method for determining how many serving sizes of certain bakery items we can make from a certain amount of ingredients
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # Iterate through library hash and if the item to make isn't there raise argument error

  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false

# Set serving size equal of the values of items to make
  serving_size = library[item_to_make]
# Set remaining ingredients equal to however many ingredients are leftover
  remaining_ingredients = num_of_ingredients % serving_size
# When remaining ingredients are 0 it returns how many you can make of a certain item. If the remaining ingredients aren't 0, then it returns the leftover how much you can make of certain baking items.

  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}" if remaining_ingredients == 0

  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

