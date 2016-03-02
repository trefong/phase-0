# Good Guess

# I worked on this challenge [by myself].


# Your Solution Below

def good_guess?(n)
  if n.to_i == 42
    puts "true"
  else
    puts "false"
  end
end

puts "What is your guess?"
n=gets.chomp
good_guess?(n)