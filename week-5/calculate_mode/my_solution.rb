# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input? Array of strings or numbers
# What is the output? (i.e. What should the code return?) Array of the most frequent occuring value(s).
# What are the steps needed to solve the problem?

# Define a method called mode that takes in one argument
# Convert array into a hash with the amount the element occurs in the array as the value
# Find the highest value in the hash
# Put those keys with the highest value in an array
# Return the array of the mode(s)


# 1. Initial Solution

def mode(array)
 max_occur = 1
 hash = Hash.new(0)
 array.each do |element|
   hash[element] += 1
 end
 max_array = []
 hash.each do |key,value|
   if value >= max_occur
     max_occur = value
   end
   max_array << key if value == max_occur
 end
 hash.each do |key,value|
   unless hash[key] == max_occur
     max_array.delete(key)
   end
 end
 return max_array
end

p mode([1,2,3,3,6,7,1])
p mode(["who","what","where","who"])
p mode([5])
p mode (["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"])

# 3. Refactored Solution

def mode(array)
 hash = Hash.new(0)
 array.each do |element|
   hash[element] += 1
 end
 max_array = []
 hash.each do |key,value|
   if value == hash.values.max
     max_array << key
   end
 end
 return max_array
end




# 4. Reflection
  #Which data structure did you and your pair decide to implement and why?
  #We decided to use hashes in this challenge because we need to access two different inputs.

  #Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  #Yes, its extremely helpful when you get stuck and have someone to get the ball rolling again.

  #What issues/successes did you run into when translating your pseudocode to code?
  #I find that pseuodocde is helpful but sometimes too vague.

  #What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  #We often used the each method to iterate through our arrays and hashes, but we also used .delete. When refactoring, we found the very useful .values.max method.