#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Reflection

# Release 1
# What are these methods doing?
# Creating a user profile that one can modify in the future.
# How are they modifying or returning the value of instance variables?
# The methods are modifying the value of Profile.new, which is assigned to the local variable instance_of_profile. Inside Profile.new there are certain instance variables that are being changed. The methods are modifying the information defined in the Profile class.

# Release 2
# What changed between the last release and this release?
# The what_is_age method was removed.
# What was replaced?
# The what_is_age method was replaced with attr_reader and :age.
# Is this code simpler than the last?
# Yes in terms of there being less code, but there is no longer a method that explicitly describes what it does, although intuitively it makes sense.

# Release 3
# What changed between the last release and this release?
# The change_my_age method was removed and attr_writer has been added so it can pass :age through it.
# What was replaced?
# The change_my_age method was replaced by attr_writer.
# Is this code simpler than the last?
# Yes in terms of now one can reassign age by calling the age method, but the code is becoming less descriptive as more of these changes are being added.

# Release 4

# refactored solution below

class Profile

  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end
end

instance_of_profile = Profile.new
puts "--- printing age -----"
sleep 0.8
p instance_of_profile.age

puts "--- printing name ----"
sleep 0.8
p instance_of_profile.name

puts "--- printing occupation ----"
sleep 0.8
p instance_of_profile.occupation

puts "--- changing profile information ----"
10.times do
  print "."
  sleep 0.1
end

instance_of_profile.age = 28
instance_of_profile.name = "Taylor"
instance_of_profile.occupation = "Rare Coins Trader"


puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info

# Release 5

class NameData

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class Greetings

  def hello
    puts "Hi #{NameData.new.name}!."
  end

end

greet = Greetings.new
greet.hello

# Release 6
# What is a reader method?
# A reader method returns the value of an assigned instance variable.
# What is a writer method?
# A writer method changes the value of an assigned instance variable.
# What do the attr methods do for you?
# The attr methods provide a shorthand way of allowing a program to display, override, or both instance variables within classes.
# Should you always use an accessor to cover your bases? Why or why not?
# No because one could encounter debugging issues by giving certain instance variables the ability to get overridden even though this may not be what the author of the code intended.
# What is confusing to you about these methods?
# At first it was hard figuring out what exactly these methods are doing. But through trial and error, this exercise, and reading the Rubyist, it became much more apparent.