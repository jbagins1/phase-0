# Jonathan Nicolas
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Step 1 - set up the method that takes string as an argument
# Step 2 - set up hash
# Step 3 - split up the string list into individual items
# Step 4 - iterate through the array that contains the string items and assign them to the hash
# Step 5 - return list
# output: hash

list = " "

def grocery_list_creator(string_of_items)
  grocery_list = Hash.new(0)
  grocery_list_array = string_of_items.split(' ')
  grocery_list_array.each { |item| grocery_list[item] += 1 }
  grocery_list
end

grocery_list_hash = grocery_list_creator(list)

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# Step 1 - set up method that takes 3 arguments: item, quantity, and the hash list
# Step 2 - assign the item and corresponding quantity to the hash
# output: updated hash with item added

def add_item(item_name, quantity, hash_list)
  if hash_list.has_key?(item_name)
    puts "This item is already on the list"
  else
    hash_list[item_name] = quantity
  end
end

def add_item(item_name, quantity, hash_list)
  hash_list[item_name] = quantity
end

add_item("Lemonade", 2, grocery_list_hash)
add_item("Tomatoes", 3, grocery_list_hash)
add_item("Onions", 1, grocery_list_hash)
add_item("Ice Cream", 4, grocery_list_hash)
print grocery_list_hash
# Method to remove an item from the list
# input: item you want to remove
# steps:
# Step 1 - set up method that takes 2 arguments, item to remove and hash list its removing an item from
# Step 2 - use method to remove item from hash
# output: updated hash with item removed

def remove_item(item_name, hash_list)
  if hash_list.has_key?(item_name)
    hash_list.delete(item_name)
  else
    puts "This item was not on the list"
  end
end

def remove_item(item_name, hash_list)
  hash_list.delete(item_name)
end

remove_item("Lemonade", grocery_list_hash)
print grocery_list_hash

# Method to update the quantity of an item
# input: hash_list , quantity, item
# steps:
# output:
# #
def update_quantity(item_name, quantity, hash_list)
  hash_list[item_name] = quantity
end

update_quantity("Ice Cream", 1, grocery_list_hash)
print grocery_list_hash
# Method to print a list and make it look pretty
# input: grocery list hash
# steps: iterate through key-value pairs and print each to console
# output: the grocery list hash as a list to the console

def print_list(hash_list)
  hash_list.each { |item, quantity| puts "#{item} = #{quantity}"}
end

print_list(grocery_list_hash)

# What did you learn about pseudocode from working on this challenge?
# Using plain English to describe what you want the code to do can help in determining what Ruby methods to use.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# I'm not really sure how you could use an array for this challenge and have quantities associated with each list item. Since we essentially have an item and quantity it made more sense to break them up into key-value pairs.
# What does a method return?
# It returns whatever is located after the return syntax.
# What kind of things can you pass into methods as arguments?
# Any object that a method can accept.
# How can you pass information between methods?
# By assigning a method's output to a non-local variable.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# This challenge wasn't that difficult. I mainly got stuck trying to figure out how to pass information between the mehods.