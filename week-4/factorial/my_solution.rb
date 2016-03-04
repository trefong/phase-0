# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
  # return (1..number).each as first_array entries
  # tell new array to have the size declared by number
  # subtract number by index number and multiply it
  # array entry each do n * (n-i)
#end


def factorial (number)
(1..number).inject(1) {|a,b| a*b}
end
