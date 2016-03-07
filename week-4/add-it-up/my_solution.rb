# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Patrick Dewitte].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:An array of integers
# Output:The sum of the integers of that array
# Steps to solve the problem.
#create a variable set to 0
#add each of the variables to that variable
#print the sum


# 1. total initial solution

def total(array)
  sum = 0
  array.each do |x|
    sum += x
end
sum
end

# 3. total refactored solution
def total(array)
  sum = 0
  array.inject(0) {|sum, i|
    sum + i}
  end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:An array of strings
# Output:The strings of the array combined into one.
# Steps to solve the problem.
#create a variable
#add each of the strings to that variable
#print the result plus a period.


# 5. sentence_maker initial solution
def sentence_maker(strings)

  new_string = strings[0]
    i = 1
    while i < strings.length
      new_string = new_string + " " + strings[i].to_s
      i += 1
    end
    new_string = new_string + "."
    return new_string.capitalize
end
sentence_maker(["i","want","to","go","to","the","movies"])

# 6. sentence_maker refactored solution
def sentence_maker(strings)
  new_string = strings.join(" ") + "."
  return new_string.capitalize
end

