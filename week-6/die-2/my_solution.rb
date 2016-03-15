# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:An array of strings
# Output:A randomly selected string of that array
# Steps:
  #For initialize
  #initialize the class by defining variables(strings of the labels array)and making an argument error.

  #For sides
  #returns the number of elements in the array(labels)

  #For roll
  #randomize the array
  #return the first element ([0])

# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
  if @labels==[]
    raise ArgumentError.new ("Input needs to be an array.")
  end
  end

  def sides
    return @labels.length
  end

  def roll
  if @labels.length == 1
    return @labels[0]
  else
  return @labels[rand(@labels.length)]
end
  end
end


# Refactored Solution
class Die
  def initialize(labels)
    @labels = labels
  if @labels==[]
    raise ArgumentError.new ("Input needs to be an array.")
  end
  end

  def sides
    return @labels.length
  end

  def roll
    if @labels.length == 1
      return @labels[0]
    else
    return @labels.sample
    end
  end
end



# Reflection
  #What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic o get this to work?
  #This challenge used much of the same logic, but because I was working with an array rather than a single integer, it required some more steps.

  #What does this exercise teach you about making code that is easily changable or modifiable?
  #It taught me that it's important to make you code as easy to read as possible because if you want to change the usage, input, output it will be easier for you and others to go back and understand what you did.

  #What new methods did you learn when working on this challenge, if any?
  #I learned about the sample method in this challenge, also that the random method can also take a single digit.

  #What concepts about classes were you able to solidify in this challenge?
  #I was able to solidify the reason for the initialize section of the class.