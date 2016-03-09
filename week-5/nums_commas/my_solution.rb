# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
  #An integer
# What is the output? (i.e. What should the code return?)
  #A string with the integer that has correctly placed commas.
# What are the steps needed to solve the problem?
  #define a method that takes an integer as an argument.
  #turn the integer into a string
  #turn each digit into an element of an array.
  #if the length of the array is less than four return the integer that has been turned into a string
  #if the length of the array is four, add "," to the array at index 1
  #turn array to string
  #if the number length is more than 4, iterate through the array from the last digit to the first, inserting a comma if the counter divided by three equals zero.
  #turn it into a string

# 1. Initial Solution
def separated_number(number)
  num_string = number.to_s
  num_array = num_string.chars
  counter = -1

  if num_array.length < 4
    return num_string

  elsif num_array.length == 4
    #num_array.insert(1,",")
    #return num_array.join
    return num_array[0] + ',' + num_array[1] + num_array[2] + num_array[3]

  else
    num_array

    end



    end

      counter -= 1


  end


separated_number(1000)
separated_number(1000000)
separated_number(0)
separated_number(100)


# 2. Refactored Solution




# 3. Reflection