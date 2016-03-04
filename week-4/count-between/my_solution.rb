# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  list_of_integers.each do |x|
    if x > upper_bound || x< lower_bound
      list_of_integers.delete(x)
    end
    if upper_bound <lower_bound
        return 0
      end
  end
      return list_of_integers.count

  end

count_between([1,2,3],0,100)
count_between([-10,1,2],0,100)
count_between([10,20,30],10,30)
count_between([],-100,100)
count_between([0],0,0)