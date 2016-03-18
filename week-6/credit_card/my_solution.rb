# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Bill Deng ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input:16 digits
# Output:true or false
# Steps:
  #initialize class by calling the 16 digit number (number) and raise an error argument that says the number isn't 16 digits.

  #create a method that takes the 16 digit number as an argument
  #turn the 16 digits into an array
  #remove the empty space characters
  #create a counter = 1
  #iterate through the array starting from the second to last digit, if the counter divided by 2 remainder is equal to zero, double it.
  #add to counter += 1


=begin

create method sum_all_digits
  go through list
    IF number is 2 characters
      split number into 2 separate numbers of 1 character each
    END IF
  sum all the numbers together
END sum_all_digits


=end

#create method called check
#if the sum divided by 10 has a remainder of 0, return true, else return false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(number)
      @num_array = number.to_s.chars.reverse
    if @num_array.count > 16 || @num_array.count < 16
      raise ArgumentError.new ("Not a valid credit card number")
    end
  end


  def double

#     counter = 1
#     var = @num_array.map do |element|
#       counter += 1
#       if counter % 2 != 0
#        element.to_i * 2
#       else
#         element.to_i
#       end
#       p var
#     end

    # @num_array.each_with_index do |item, index|
    #   if (index % 2 != 0)
    #     item.to_i * 2
    #   else
    #    item.to_i
    #   end
    # end

    @num_array.map!.with_index { |item, index|
       index.odd? ? item.to_i * 2 : item.to_i
      }
    @num_array
  #   @num_array.map! |element|
  #     if @num_array[element.index]
  # end

  end


  def sum_all_digits
     @num_array.map! do |num|
      if num.to_s.length > 1
        num.to_s.split('')
      else
        num.to_s
      end
    end

    @sum = 0

    @num_array.flatten.map! do |num|
      @sum += num.to_i
    end
  end

  def check_card
    double
    sum_all_digits
    @sum % 10 == 0
  end

end

# 4563960122001999


=begin

Example given 4563 9601 2200 1999
Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
Step 3: 70 (total above) % 10 == 0
Step 4: Profit


=end

# Refactored Solution


class CreditCard
  def initialize(number)
      @num_array = number.to_s.chars.reverse
    if @num_array.count != 16
      raise ArgumentError.new ("Not a valid credit card number")
    end
  end

  def double
    @num_array.map!.with_index { |item, index| index.odd? ? item.to_i * 2 : item.to_i }
    @num_array
  end

  def sum_all_digits
     @num_array.map! do |num|
      if num.to_s.length > 1
        num.to_s.split('')
      else
        num.to_s
      end
    end
    @sum = 0
    @num_array.flatten.map! { |num|@sum += num.to_i }
  end

  def check_card
    double
    sum_all_digits
     @sum % 10 == 0

  end
end

=begin
  What was the most difficult part of this challenge for you and your pair?
  For me and my pair, we were both stumped as to why our counter kept printing to the console instead of our modified array. We ended up not using a counter instead.

  What new mehtods did you find to help you when you refactored?
  Some methods we found, although not while refactoring, were .with_index and .odd?. Both were really helpful and saved alot of steps.

  What concept or learnings were you able to solidify in this challenge?
  My partner was great at explaining to me how to test out code. And I therefore got a better idea of how Ruby reads classes.

=end