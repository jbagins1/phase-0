# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Step 1 - create the array to contain the grocery list
# Step 2 - split the items on the list and put them into the array
# Step 3 - create the hash
# Step 4 - put array objects into hash
# Step 5 - set default quantity
# Step 6 - use print to print the list to the console
# output: hash

grocery_list = " "

def create_list(string)
  array = string.split
  list = Hash.new(0)
  array.each {|word| list[word] = 1 }
  return list
end

create_list(grocery_list)

# Method to add an item to a list
# input: item name and optional quantity
# steps: create a new hash key-value pair indicating corresponding item and quantity
# output: updated hash with new item and quantity

def add_item(name, quantity=1, list)
  list[name] = quantity
  return list
end



# Method to remove an item from the list
# input: item you want to remove from the list
# steps: remove key-value pair from grocery
# output: updated grocery list without unwanted item

def remove_item(name, list)
  list.delete(name)
  return list
end

# Method to update the quantity of an item
# input: new value for key-value pair
# steps: assign new value for the item key
# output: item will have a new quantity assigned

def update_item(name, quantity, list)
  list[name] = quantity
  return list
end

# Method to print a list and make it look pretty
# input: the grocery list hash
# steps: loop through key-value pairs and print each one to the console
# output: the grocery list to the console

def print_list(list)
  list.each { |object, amount| puts "#{object} = #{amount}" }
end

list = " "
grocery_list = create_list(list)
add_item("lemonade", 2, grocery_list)
add_item("tomatoes", 3, grocery_list)
add_item("onions", 1, grocery_list)
add_item("ice cream", 4, grocery_list)
puts "Create list"
print_list(grocery_list)
puts "Remove Lemonade"
remove_item("lemonade", grocery_list)
print_list(grocery_list)
puts "Update ice cream quantity to 1"
update_item("ice cream", 1, grocery_list)
print_list(grocery_list)

# What did you learn about pseudocode from working on this challenge?
# It was challenging attempting to translate in plain english what we'd like the code to do and then getting it to that point.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# I'm not really sure how you could use an array for this challenge without it getting very complicated. Since we essentially have an item and quantity it made more sense to break them up into key-value pairs.
# What does a method return?
# It returns whatever is located after the return syntax.
# What kind of things can you pass into methods as arguments?
# Any object that a method can accept.
# How can you pass information between methods?
# You can pass information between methods by passing the method andd its arguments to another method.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# This challenge was very difficult and I did not understand how to do. Namely, working with multiple variables and arguments was difficult to conceptualize.