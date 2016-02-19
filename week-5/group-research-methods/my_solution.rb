# Research Methods

# I spent a few hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]

my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

# Create a method my_array_finding_method that takes an Array and a letter as arguments and returns a new array of the words that contain that letter.

#PSEUDOCODE

#1 a new method taking two arguments - the array of words and the letter we're searching for.
#2 using .map we can convert the entire array into strings (getting rid of those pesky integers).
#3 using .select method to iterate and search.

# Andrew Crowley's solution

def my_array_finding_method(source, thing_to_find)
make_string = source.map { |e| e.to_s }
make_string.select { |e| e.include?(thing_to_find) }
end

# Create a method my_hash_finding_method that takes a Hash and number as arguments and returns a new array of pet names by age.

#PSEUDOCODE

#1 two arguments again - hash of pet names and the age we're searching for.
#2 create a new hash using .select. This method will iterate through each item in the hash and pick out what we're searching for.
#3 we are searching for age so the value we want == thing_to_find
#4 since the keys = pet names in this hash, and that's what we want to show, .keys works perfectly.


def my_hash_finding_method(source, thing_to_find)
solution = source.select { |key, value| value == thing_to_find }
solution.keys
end

# Identify and describe the Ruby method(s) you implemented.

# .map - used to convert array elements into strings. This method iterates through an array and returns a new array where each element has been modified as per my instructions.
# .select - Iterates through an array and returns a new array based on your argument.
# .include? - Searches a string for your argument and returns true or false.
# .keys - This one returns a new array populated with the keys from this hash.

# Person 2

# Pseudocode
# Input: Existing array, how many pets you want to add
# Output: Permanently modified new array with modified numbers, adding the amount of pets

def my_array_modification_method!(source, add_pets)
  source.map!{ |i| i.is_a?(Integer) ? i + add_pets : i}
end

def my_hash_modification_method!(source, add_age)
  source.each {|k, v| source[k] = v + add_age}
end

# Identify and describe the Ruby method(s) you implemented.
# I implemented .map! for modifying an array destructively and .is_a?(Integer) ? to check for and modify integers only.
# I implemented .each to target each key of the hash, and saved them destructively via saving directly to the new value of the key.

# Person 3
def my_array_sorting_method(source)
  p source.sort_by{|x| x.to_s}
end

my_array_sorting_method(i_want_pets)


def my_hash_sorting_method(source)
  p source.sort_by{|key,value| [value, key]}
end

my_hash_sorting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
# sort_by: is a method that sorts a collection of items against a block and returns an array of the sorted items. This method was useful because I was not able to use the sort method on elements in array that contains but strings and integers.

# to_s: is a method that creates a string representation of the object that calls it. This method was useful in this situation because there were both strings and integers within the array. I was not able to use the sort method on its own because it wouldn't have been able to work with both strings and integers.  The solution was to use the method sort_by and convert each element in the array to a representation of a string.

#Reading the ruby docs is still a bit difficult to grasp so many times I try to replicate the examples and change different mechanics of the code to see what it does. I also try to use ctrl + F to go to the keyword that makes most sense to search through the document.

# Person 4
# Pseudocode
# Take an existing list, and letter or word.
# Search through the list to see if any element contains the inputted letter or word and save it in another list.
# Take the saved list and delete each element matching on both lists.

def my_array_deletion_method!(source, thing_to_delete)
  words_to_delete = source.find_all { |f| f.to_s.include?(thing_to_delete)}
  words_to_delete.each do |word|
    source.delete(word)
  end
  p source
end

# Pseudocode
# Take an existing list, and word.
# Find the word inside the list and delete it.

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  p source
end



# Identify and describe the Ruby method(s) you implemented.
#
# Enumerable#find_all allows you to pass a block of code specifing every element in the array that matches that block. In my code I used it to find every element that included the thing wanted to be deleted.
# String#include? accepts an argument and returns a true or false if it is found inside that string.
# Enumerable#delete accepts an argument and if found in an array, deletes the element in that array, and if it's a hash deletes the key along with its paired value.
# These methods are great for using with each other. The Include method for example can initiate an if statement since it returns either true or false. In my case I used it to pass any elements that tested true into a separate array by calling the find_all method. Finally, delete is great for destructively altering an array or hash by removing an element or key.
# One way I found to make it easier to read the Ruby docs, is to read the side bar and quickly scan for any potential methods that sound somewhat to what I want to achieve, I then also quickly read over the description. If the examples shown are similar to the results I want achieved, I then use IRB to experiment until I can get it to do what I want it to do. If that method fails to produce what I want, or is too convoluted, I just move on another method. I also noticed the Ruby docs have a very specific pervasive vocabulary, such as initial, sym, obj, these point to what it requires and what is produced. For example obj is an object, initial, is an optional initial value some methods take, etc.

# Person 5

# Pseudocode
# Need method that separates ojects into 2 separate nested arrays based on true/false test for integer or string
# Group integers in one array and group strings in another array

def my_array_splitting_method(array)
  array.partition { |word_or_number| word_or_number.is_a?(Integer) }
end

def my_array_splitting_method(array)
  array1 = []
  array2 = []
  array3 = []
  array3 << array1
  array3 << array2
  array.each do |x|
    if x.is_a?(Integer)
      array1 << x
    elsif x.is_a?(String)
      array2 << x
    end
  end
  array3
end

my_array_splitting_method(i_want_pets)

def my_hash_splitting_method(hash)
  hash.partition { |pet, age| age > 5  }
end

def my_hash_splitting_method(hash)
  array1 = []
  array2 = []
  array3 = [array1, array2]
  hash.each do |k, v| v
    if v <= 4
      array1 << [k, v]
    elsif v > 4
      array2 << [k, v]
    end
  end
  array3
end

my_hash_splitting_method(my_family_pets_ages)

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# Identify and describe the Ruby method(s) you implemented.
# my_array_splitting_method will #separate an array into 2 nested #arrays within the original array of strings and integers.  It accomplishes this by using the .partition method on the input array. Partition splits the array into 2 nested arrays within the original array based on whether a provided code block return true. In this case the code block is: .is_a?(Integer), which iterates through element of the array and asks are you an integer? If yes, go into this array, if no go into the other one. Similarly, my_hash_splitting_method will separate the hash, turn it into an array, and separate it into two nested arrays (again by using partition and iterating through the values) based on whether the value, in this case: pet's age, is greater than 4. I found these solutions through reading the Well Grounded Rubyist Chapter 10.3.4.
=end