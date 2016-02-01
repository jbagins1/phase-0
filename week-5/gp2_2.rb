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
