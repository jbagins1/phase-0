# Research Methods

# I spent too many hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]

my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |item| item.to_s.include? thing_to_delete}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |k, v| k.to_s.include? thing_to_delete}
end

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#=>The method I used was the delete_if method. It will delete an element
#=>from the array/hash if some condition is met. In this case I deleted if
#=>an element had a substring of thing_to_delete.
# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#=>My biggest difficulty was doing destructive methods. I could get the correct
#=>answer, but it would not be the same object_id which forced me to abandon
#=>my initial solution.
#



# Person 5

# Identify and describe the Ruby method(s) you implemented.
# is_a?(Integer) and is_a?(String) which test whether the given argument is either an integer or string respectively

# Pseudocode
# seperate the integers from the strings
# put the integers into an array and put the strings into a separate an array

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
# my_array_splitting_method will split up an array and separate out the integers and the strings into nested arrays. my_hash_splitting_method will split up a hash and return an array of nested arrays where 1 array will contain the key-value pairs if the value is less than 4, meanwhile the other array will contain all of key-value pairs.

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# What was your experience like researching for Ruby methods. Did you find them quickly? How easy was it to implement once you found one?
#
# Did you find any methods you thought would work but didn't? What made you think they would work? How did you determine they didn't?
# It was challenging finding the right method, namely I wasn't sure where to look, but I knew generally what I was looking for.
# How does the method you chose iterate through and modify information in a data structure?
# It asks the objects it iterates through whether they are integers or strings.
# Is the method you implemented destructive or non-destructive?
# Non-destructive.
# What did you learn from reading your accountability-group member's explanations on their solutions?
# I learned about the methods they used to accomplish their assignments.
# What did you learn about researching and explaining your research to others?
# I learned that it is sometimes difficult to explain the concepts in plain english and make them seem like they make sense.  It makes sense to me, but may not make sense to others.