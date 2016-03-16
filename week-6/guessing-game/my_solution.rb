# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input:An integer
# Output:Returns a symbol based on the input.
# Steps:
  #initialize the class by defining the answer(an integer) as answer.

  #Define an instance method guess that takes an integer as an argument (guess)
  #If the guess is higher than answer, return the symbol high.
  #If the guess is lower than answer, return the symbol low.
  #If the guess is equal to answer, return the symbol correct.

  #Define an instance method solved?
  #If the guess is equal to the answer return true
  # Else return false.


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end
  # Make sure you define the other required methods, too
  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end


# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    @guess == @answer
  end
end



# Reflection
  #How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  #I'm not sure if I'm understanding the question correctly, but I'll answer it as best I can. Instance methods are like boxes in which you keep different procedures needed to complete a larger project. Instance variables are like tools needed to complete the procedures.

  #When should you use instance variables? What do they do for you?
  #You should use instnace variables when you need it to be constant througout your class, because it will only stay constant within the class you declared it in. Instance variables will allow you to call on the variable in all of the methods within that class.

  #Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struglle with?
  #Flow control basically guides the program which path to take if certain things occur, therefore changing the flow of the program. I did not have any problems with flow control this challenge, I just used a simple if else statement.

  #Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  #To be honest I still don't know why it requires a symbol. I know that symbols are stored away once declared, but I dont know the reason for doing that in this challenge. The benefit of using symbols is that they are immutable and unique, which allow them to be constant throughout code.