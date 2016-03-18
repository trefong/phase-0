# A Nested Array to Model a Bingo Board SOLO CHALLENGE
# I spent [2.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #create an array called letter with the letters of BINGO.
  #select a random element from the letter array
  #create a variable that is equal to a random number between 1 and 100.
  #return the random letter and the random number.


# Check the called column for the number called.
  #fill in the outline here
  #if B, check all arrays in the arrray at index 0 for the number.
  #if I, check all arrays in the arrray at index 1 for the number.
  #if N, check all arrays in the arrray at index 2 for the number.
  #if G, check all arrays in the arrray at index 3 for the number.
  #if O, check all arrays in the arrray at index 4 for the number.

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  #if the check is true, replace it with x.
# Display a column to the console
  #fill in the outline here
  #puts the numbers of the array at all the indexes of the arrays within bingo_board.
# Display the board to the console (prettily)
  #fill in the outline here
  #puts each element of the bingo_board array.
# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter = "B"
@number = 47
  end

  def call
    letters = ["B","I","N","G","O"]
    @letter = letters[rand(letters.length)]
    @number = rand(1..100)
    selection = @letter +@number.to_s
  end


  def check
    call
    if @letter == "B"
      @bingo_board.map! { |array1|
        if array1[0] == @number
          array1.delete_at(0)
          array1.unshift("X")
        else
          array1
        end
      }
    elsif @letter == "I"
      @bingo_board.map! { |array1|
        if array1[1] == @number
          array1.delete_at(1)
          array1.insert(1,"X")
           else
          array1
        end
      }
    elsif @letter == "N"
      @bingo_board.map! { |array1|
        if array1[2] == @number
          array1.delete_at(2)
          array1.insert(1,"X")
           else
          array1
        end
      }
    elsif @letter == "G"
      @bingo_board.map! { |array1|
        if array1[3] == @number
          array1.delete_at(3)
          array1.insert(1,"X")
           else
          array1
        end
      }
    elsif @letter == "O"
      @bingo_board.map! { |array1|
        if array1[4] == @number
          array1.delete_at(4)
          array1.insert(1,"X")
           else
          array1
        end
      }
    end
    @bingo_board.each do |x|
      p x
    end
  end

end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter = "B"
@number = 47
  end

  def call
    letters = ["B","I","N","G","O"]
    @letter = letters[rand(letters.length)]
    @number = rand(1..100)
    selection = @letter +@number.to_s
  end


  def check
    call
      @bingo_board.map! { |array1|
        if array1.include?(@number)
          array1.map! { |x|
            x == @number ? 'X' : x
          }
        else
          array1
        end
      }
      @bingo_board.each { |array|
      puts array.inspect
    }
    end

  end






#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
 new_game.call
 new_game.check
#Reflection
=begin
 -How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  Pseudocoding was a little bit diffucult because I had a hard time going into further detail than what was already outlined, while at the same time not using "coding language". I think my pseudocoding style could use some work, I never know if I should go back and change the pseudocode if I decide to go another route when I try to implement it.

  -What are the benefits of using a class for this challenge?
  Using a class here is useful because you can use the same variables across the methods.

  -How can you access coordinates in a nested array?
  You can access nested arrays by specifying the index numbers in brackets, one after anther.

  -What methods did you use to access and modify the array?
  I mainly used the map!, delete_at, and unshift methods to access and modify the array.

  -Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  One method that I learned about was the inspect method. I learned that it is used to turn a something to a string. It is also called .to_s.

  -How did you determine what should be an instance variable versus a local variable?
  I would use a local variable if I only needed it within the method that I defined it in. Otherwise I would use an instance variable.

  -What do you feel is most improved in your refactored solution?
  I think that the length of my code is the most improved in my refactored solution.

=end
