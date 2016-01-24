# Factorial

# I worked on this challenge with: Ryan Nebuda.


# Your Solution Below
def factorial(number)
  x = 1
  (1..number).each do |number|
    x *= number
  end
  x
end
