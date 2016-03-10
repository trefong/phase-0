# Numbers to Commas Solo Challenge

# I spent [6] hours on this challenge.

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
num_array.each do |x|
  if counter % 4 == 0
    num_array.insert(counter, ",")
  end
counter -= 1
  end
return num_array.join
  end



# 2. Refactored Solution

def separated_number(number)
  return number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end

separated_number(1000)
separated_number(1000000)
separated_number(0)
separated_number(100)

# 3. Reflection
  #What was your process for breaking the problem down? What different approaches did you consider?
  #I tried to keep the steps as specific and simple as possible. I knew there would be more steps so I didn't want to confuse myself.

  #Was your pseudocode effective in helping you build a successful initial solution?
  #It was helpful the first round of trying to figure out my initial solution. After my code didn't work, it became useless to keep looking back at it.

  #What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.) Did it/they significantly change the way your code works? If so, how?
  #The new Ruby methods that I used in this challenge was .char, .insert, and .join. These methods were pretty straightforward when I was using them so it wasn't confusing. As with most methods, the definitely made solving this challenge easier.

  #How did you initially iterate through the data structure?
  #Initially I used the .each method.

  #Do you feel your refactored solution is more readable than your initial solution? Why?
  #I feel that the initial solution is more readable because it explains the process, which leads you to understand more.

  # ** NOTE ** My code returns the correct output but the rspec doc did not want to accept it. When I run the my_solution.rb doc in in my command line it completes the challenge. I wasn't sure what I was doing wrong.
