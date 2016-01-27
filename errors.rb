# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#
# The error occurs in my_soluton.rb.
#
# 2. What is the line number where the error occurs?
#
# The error occurs on line 170.
#
# 3. What is the type of error message?
#
# This is a syntax error.
#
# 4. What additional information does the interpreter provide about this type of error?
#
#The interpreter says it did not expect an end-of-input, but expected a keyword_end.
#
# 5. Where is the error in the code?
#
# The while loop needed to be closed off with an end.
#
# 6. Why did the interpreter give you this error?
#
# Because in Ruby a while loop must be closed by an end. If only the method is closed off by the end then the it doesn't know whether the method is being closed or the while loop.

# --- error -------------------------------------------------------

south_park = "Adult cartoon"

# 1. What is the line number where the error occurs?
#
#The error occurs on line 47.
#
# 2. What is the type of error message?
#
# In '<main>'.
#
# 3. What additional information does the interpreter provide about this type of error?
#
#There is an undefined local variable or method named "south_park".
#
# 4. Where is the error in the code?
#
# The variable south_park is undefined.
#
# 5. Why did the interpreter give you this error?
#
# Because a local variable cannot be undefined.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
#
# Line 71.
#
# 2. What is the type of error message?
#
#Another in '<main>'.
#
# 3. What additional information does the interpreter provide about this type of error?
#
#That a method was left undefined.
#
# 4. Where is the error in the code?
#
#There must be a def before cartman and an end on the next line after cartman.
#
# 5. Why did the interpreter give you this error?
# Because this is not how you set up methods in Ruby. To set up a method you have to use the def command and close it off with a end.

# --- error -------------------------------------------------------

def cartmans_phrase(x)
  puts x
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#
# Line 95.
#
# 2. What is the type of error message?
#
#In the "cartmans_phrase" method.
#
# 3. What additional information does the interpreter provide about this type of error?
#
#It says that there is a wrong number of arguments, 1 for 0.
#
# 4. Where is the error in the code?
#
# In the argument.
#
# 5. Why did the interpreter give you this error?
# First, there was no argument parameter assigned. Second, the argument paramter variable should have been after the puts.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Whateva I'll do what I want!")

# 1. What is the line number where the error occurs?
#
#Line 122.
#
# 2. What is the type of error message?
#
#In "cartman_says"
#
# 3. What additional information does the interpreter provide about this type of error?
#
#Its the wrong number of arguments, 0 for 1.
#
# 4. Where is the error in the code?
#
#There was no argument assigned.
#
# 5. Why did the interpreter give you this error?
#
#Because no argument was assigned. If you want cartman_says to say something you have to include a string in the parantheses.

# --- error -------------------------------------------------------

def cartmans_lie(lie)
  puts lie
end

cartmans_lie('A meteor the size of the earthis about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#
#Line 156.
#
# 2. What is the type of error message?
#
#In "cartmans_lie".
#
# 3. What additional information does the interpreter provide about this type of error?
#
#Its the wrong number of arguments, 0 for 1.
#
# 4. Where is the error in the code?
#
#There were the wrong number of arguments assigned.
#
# 5. Why did the interpreter give you this error?
#
#If you want it to put the Wyoming phrase, then delete the ", name" paramter. Also you will need to remove "#{lie}, #{name}!", and replace it with just lie.


# --- error -------------------------------------------------------

5.times do puts "Respect my authoritay!" end

# 1. What is the line number where the error occurs?
#
#On line 179.
#
# 2. What is the type of error message?
#
# In the "*".
#
# 3. What additional information does the interpreter provide about this type of error?
#
#The string cannot be coerced into a fixnum.
#
# 4. Where is the error in the code?
#
# The string cannot be multiplied by 5 in that way.
#
# 5. Why did the interpreter give you this error?
#
#To display the string 5 times you have to use 5.times do puts "Respect my authoritay!".

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
#
#Line 203.
#
# 2. What is the type of error message?
#
#A "/" error.
#
# 3. What additional information does the interpreter provide about this type of error?
#
#The interpreter cannot divide something by 0.
#
# 4. Where is the error in the code?
#
#The 0.
#
# 5. Why did the interpreter give you this error?
#Because you can't divide something by 0.

# --- error -------------------------------------------------------

require_relative = File.read("cartmans_essay.md")

# 1. What is the line number where the error occurs?
#
#Line 227.
#
# 2. What is the type of error message?
#
#In "require_relative".
#
# 3. What additional information does the interpreter provide about this type of error?
#
#It cannot load the md file.
#
# 4. Where is the error in the code?
#
#To load a file with a local variable you don't just assign the file to the variable.
#
# 5. Why did the interpreter give you this error?
#
#I understand why, but I don't understand how to complete. I don't get how one wants to load this file through assigning it to a local variable.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

Which error was the most difficult to read?

They were all fairly straightforward when you look at the error and the code.

How did you figure out what the issue with the error was?

Trying to review the concepts we learned about and figure out what was missing through how the error is described.

Were you able to determine why each error message happened based on the code?

Yes.

When you encounter errors in your future code, what process will you follow to help you debug?

First, figure out which file its occuring in. Second, figure out which line its on. Third, figure out the type of error message. Fourth, read the additional informaton. Five, investigate solutions.
