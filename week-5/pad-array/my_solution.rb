# Pad an Array

# I worked on this challenge [with:Kunal Patel ]

# I spent [2] hours on this challenge.


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
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive
  array.dup.fill(value, array.length...min_size)
end


# 4. Reflection
  #Were you successful in breaking the problem down into small steps?
  #Yes we were successful in writing down small steps in pseudocode.

  #Once you had writeen your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  #We were able to translate it however when we read it back to ourselves sometimes we would find too vague or incorrect directions that we would have to fix.It was successfuly in the sense that it helped us organize our thoughts.

  #Was your intial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve the problem?
  #Our intial solution didn't pass the tests at first because the it was returning the error that the nondestructive method was actually destructive. This had us puzzled for a long time, but I finally figured out that the first part of our if statement was returning the original string, which counts as destructive. To solve this, I cloned the original array and set it a new name so that it could return a new array.

  #When you refactored, did you find any existing methods in Ruby to clean up your code?
  #Yes, I found the .fill method which adds elements to an array. I also, discovered the .dup method which is similiar to the .clone method.

  #How readable is your solution? Did you and your pair choose descriptive variable names?
  #I think our intial solution is very readable largely because of the fact that we chose specific variable names.

  #What is the difference between destructive and non-destructive methods in your own words?
  #Non-destructive methods don't modify the original object that you put into it and destructive methods do.