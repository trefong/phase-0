# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

#def assert
  #raise "Assertion failed!" unless yield
#end

#name = "bettysue"
#assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#declare an assert function that raises a string unless yield
#name equals the string bettysue
#call assert function to check if name equals bettysue
#call assert function to check if name equals billybob
#In the error message it is saying the assertion fails on line 14, when it is checking if name is equal to billybob, which it is not.


# 3. Copy your selected challenge here
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


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "The mode is not printed!"unless yield
end

assert{mode([1,2,3,3,6,7,1])}
assert{mode(["who","what","where","who"])}
assert{mode([5])}
assert{mode (["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"])}


# 5. Reflection
#What concepts did you review or learn in this challenge?
#In this challenge I got to review how to create functions in Ruby as well as learn how to write assert functions.

#What is still confusing about Ruby?
#One thing that is still confusing about Ruby is the usage of symbols.

#What are you going to study to get more prepared for Phase 1?
#I'm going to read through the books a bit more as well as review JavaScript concepts that I felt shakey on.
