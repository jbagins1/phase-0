# Pseudocode
# Input: a list of people
# Output: grouping those people together into groups of 4 or 5
# Steps in the process:
# Step 1 - assign list of people into an array
# Step 2 - define method
# Step 3 - figure out how many people are on the list
# Step 4 - if the number of people is divisible by 5 with no remainder, then group everyone into groups of 5
# Step 5 - if the number of people is not cleanly divisible by 5, then group everyone into groups of 3
# Step 6 - create hash
# Step 7 - assign each individual group array to a value
# .each_slice(x).to_a - will separate the array every x times into subarrays
# .each_with_index - assigns keys to index of values starting at 0

cohort = []

def people_grouper(names_list)
  x = names_list.length
  if x % 5 == 0
    groups = names_list.each_slice(5).to_a
  else
    groups = names_list.each_slice(3).to_a
  end
  accountability_groups = Hash.new
  groups.each_with_index do | names, group_nums|
    accountability_groups[names] = group_nums
  end
  accountability_groups
end

people_grouper(cohort)

# What was the most interesting and most difficult part of this challenge?
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yes, its gradually getting better as I now the capabilities of Ruby methods better.
# Was your approach for automating this task a good solution? What could have made it even better?
# Yes. I am not sure what could have made it better.
# What data structure did you decide to store the accountability groups in and why?
# A hash because I was able to assign the groups to indexed value pairs.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I learned about the .each_with_index method and the differences between that and the .each.with_index(x) method.