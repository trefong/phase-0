# Leap Years

# I worked on this challenge [by myself].


# Your Solution Below
def leap_year?(n)
  if n.to_i % 4 == 0
    puts "true"
  else
    puts "false"
  end
end

puts "Enter year"
  n=gets.chomp
leap_year?(n)
