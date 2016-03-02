
# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below
def welcome(n)
  n.to_s
  if
    n.include? "CA"
    puts "Welcome to California"
  else
    puts "You should move to California"
  end
end

puts "What is your address?"
n=gets.chomp
welcome(n)

