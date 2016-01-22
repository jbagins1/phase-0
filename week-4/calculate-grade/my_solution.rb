# Calculate a Grade

# I worked on this challenge with: Kenton Lin.

# Your Solution Below

def get_grade(average)
  if average < 60
    p "F"
  elsif average >= 60 && average < 70
    p "D"
  elsif average >= 70 && average < 80
    p "C"
  elsif average >= 80 && average < 90
    p "B"
  elsif average >= 90 && average <= 100
    p "A"
  end
end

get_grade(50)
get_grade(66)
get_grade(72)
get_grade(88)
get_grade(90)
