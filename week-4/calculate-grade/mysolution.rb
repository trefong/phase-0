# Calculate a Grade

# I worked on this challenge [by myself, with: Scott Southard].


# Your Solution Below

def get_grade(x)

  if x.to_i >= 90 && x.to_i<= 100
  puts "A"

  elsif x.to_i>=80 && x.to_i<=89
  puts "B"

  elsif x.to_i>=70 && x.to_i<=79
  puts "C"

  elsif x.to_i>=60 && x.to_i<=69
  puts "D"

  else puts "F"

  end
end

puts "What's your grade?"
  x=gets.chomp
get_grade(x)



