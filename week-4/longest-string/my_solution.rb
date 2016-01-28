# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

def longest_string(list_of_words)
  y = list_of_words[0]
  list_of_words.each do |x|
    if x.length > y.length
        y = x
    end
  end
  y
end

def longest_string(list_of_words)
  list_of_words.max_by do |x| x.length
  end
end