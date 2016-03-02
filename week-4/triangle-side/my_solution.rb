# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if a.to_i > 0 && b.to_i && c.to_i >0
    puts "true"
  else
    puts "false"
  end
end

puts "What is the length of side A?"
a=gets.chomp
puts "What is the length of side B?"
b=gets.chomp
puts "What is the length of side C?"
c=gets.chomp

valid_triangle?(a,b,c)
