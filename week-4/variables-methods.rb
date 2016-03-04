puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts 'Hi there ' + first_name + ' ' + middle_name + ' ' + last_name + '!'


puts "What is your favorite number?"
fav_num = gets.chomp
new_num = fav_num.to_i + 1
puts new_num.to_s + ' is a much better number'


#Return a formatted address link:https://github.com/trefong/phase-0/blob/master/week-4/address/my_solution.rb
#Defining math methods link:https://github.com/trefong/phase-0/blob/master/week-4/math/my_solution.rb

#How do you define a local variable?
  #You define a local variable by naming it and setting it equal to something via the equals sign.

#How do you define a method?
  #You write def and then your method name and any arguments it takes.

#What is the difference between a local variable and a method?
  #A local variable holds data and gives it a name. A method holds a procedure and gives it a name.

#How do you run a ruby program from the command line?
  #If the program is in a ruby file, you type ruby and then the name of the file.

#How do you run an RSpec file from the command line?
  #You would type rspec and then the file name.

#What was confusing about this material? What made sense?
  #A lot of the times I was confused as to what the directions were asking us to do. There were little details that if they were neglected, the rspec check would return failures.What made sense was the concept that of how methods use local variables.