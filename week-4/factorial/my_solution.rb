# Factorial

# I worked on this challenge [with: Patrick Dewitte ].


# Your Solution Below
  # return (1..number).each as first_array entries
  # tell new array to have the size declared by number
  # subtract number by index number and multiply it
  # array entry each do n * (n-i)
#end


def factorial (number)
  i=1
  until number == 0
    i *= number
    number -= 1
  end
  i
end