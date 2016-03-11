# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [.7] hours on this challenge.

# 0. Pseudocode

# Input:An integer greater than 0
# Output:Number of sides or a random number between 0 and the number of sides
# Steps:
  #Initialize the class
  #define the integer input as @sides

  #For sides method
  #returns the input integer

  #For roll method
  #returns a random number between 0 and the input integer

# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("The number has to be more than 1!")
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# 3. Refactored Solution
class Die

  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("The number has to be more than 1!")
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end

end


# 4. Reflection
#What is an ArgumentError and why would you use one?
#An ArgumentError is a message that the user would get if the argument is unacceptable. You would use it to tell the user what is wrong with their input and how to fix it.

#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#I used the new method rand which wasn't difficult at all to use. Only initially, I was unsure if it would accept @sides as part of the range, but it ended up working!

#What is a Ruby class?
#A Ruby class is like a blueprint for data to be run through and the same thing will be done each time.

#Why would you use a Ruby class?
#You would use a Ruby class if you wanted to be able to do different things to input quickly, by just calling methods(that you've created) to them.

#What is the difference between a local variable and an instance variable?
#A local variable is a variable that is only recognizable within the method that is is created in. A Instance variable is recognizable within the class that it was created in and is prefixed with an @ symbol.

#Where can an instance variable be used?
#An instance variable can be used anywhere inside the class in which it was created.

