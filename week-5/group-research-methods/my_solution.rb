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
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5

# Identify and describe the Ruby method(s) you implemented.

# Pseudocode
# seperate the integers from the strings
# put the integers into an array and put the strings into an array

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
  return array3
end

my_array_splitting_method(i_want_pets)

my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

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
  return array3
end

my_hash_splitting_method(my_family_pets_ages)

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#