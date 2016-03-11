# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
  #input:An array, a positive integer, and an object
  #output:An an array with added elements

  #steps:
  #define a method that takes three arguements, they array to be modified, a positive integer, and an object.
  #if the integer is <= 0 return nil
  #if the array length is equal to the integer puts the array
  #push the object (integer - array length) times
  #return modified array
  #end


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length >= min_size
    return array
  else
    padding = min_size - array.length
    padding.times do |x|
      array.push(value)
    end
  end
  return array
end
pad!([1,2,3],5)
pad!([1,2,3],5,"apple")
pad!([1,2,3],2)

def pad(array, min_size, value = nil) #non-destructive
  clone = array.clone
  if array.length >= min_size
    p clone
  else
  new = array.clone
    padding = min_size - array.length
    padding.times do |x|
       new.push(value)
    end
return new
end

end

pad([1,2,3],5)
pad([1,2,3],5,"apple")
pad([1,2,3],2)

# 3. Refactored Solution



# 4. Reflection