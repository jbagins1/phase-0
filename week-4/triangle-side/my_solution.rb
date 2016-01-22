# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(num1, num2, num3)
    if num1 + num2 > num3 && num1 + num3 > num2 && num2 + num3 > num1
    return true
    else
        return false
    end
end