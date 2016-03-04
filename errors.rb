# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# "Screw you guys " + "I'm going home." = cartmans_phrase
  #1.What is the name of the file with the error?
    #errors.rb
  #2.What is the line number where the error occurs?
    #8
  #3.What is the type of error message?
    #Syntax
  #4.What additional information does the interpreter provide about this type of error?
    #It was not expecting an equals sign, rather an end-of-input.
  #5.Where is the error in the code?
    #At the equals sign
  #6.Why did the interpreter give you this error?
    #Variables have to be the first thing identified.
# This error was analyzed in the README file.
#def cartman_hates(thing)
  #while true
    #puts "What's there to hate about #{thing}?"

#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#erros.rb
# 2. What is the line number where the error occurs?
#179
# 3. What is the type of error message?
#syntax
# 4. What additional information does the interpreter provide about this type of error?
#It expected an end.
# 5. Where is the error in the code?
#At the end of line 179.
# 6. Why did the interpreter give you this error?
#It needs another end after line 25, it thinks the rest of the code is part of the method and that's why it says the error is at the bottom of the document.

#south_park

# 1. What is the line number where the error occurs?
#43
# 2. What is the type of error message?
#Undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#It doesn't proved any further information
# 4. Where is the error in the code?
#At line 43, there is no other place for it to point out the error.
# 5. Why did the interpreter give you this error?
#You need to set south_park as a value of a variable or method.

#cartman()

# 1. What is the line number where the error occurs?
#56
# 2. What is the type of error message?
#in<main>
# 3. What additional information does the interpreter provide about this type of error?
#There is an undefinted method cartman.
# 4. Where is the error in the code?
#In <main>
# 5. Why did the interpreter give you this error?
#You need to write def before the method and write end at the end.

#def cartmans_phrase
  #puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#69-73
# 2. What is the type of error message?
#Argument error
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments.
# 4. Where is the error in the code?
#It does not give any arguments
# 5. Why did the interpreter give you this error?
#It does not take any arguments and when it is run you give it an argument.

#def cartman_says(offensive_message)
  #puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#86-90
# 2. What is the type of error message?
#Argument error.
# 3. What additional information does the interpreter provide about this type of error?
#It has the wrong number of arguments.
# 4. Where is the error in the code?
#On line 90.
# 5. Why did the interpreter give you this error?
#There is no argument on line 90.



#def cartmans_lie(lie, name)
  #puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#105-109
# 2. What is the type of error message?
#Argument error.
# 3. What additional information does the interpreter provide about this type of error?
#Contains the wrong number of arguments.
# 4. Where is the error in the code?
#Lines 105-109
# 5. Why did the interpreter give you this error?
#You have entered the wrong amount of arguments when you run the method.

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#122
# 2. What is the type of error message?
#type error
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
#In the <main> section.
# 5. Why did the interpreter give you this error?
#You can't multiply an integer by a string.

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#135
# 2. What is the type of error message?
#Zero division error
# 3. What additional information does the interpreter provide about this type of error?
#Can't divide by 0
# 4. Where is the error in the code?
#In the <main> section.
# 5. Why did the interpreter give you this error?
#You can't divide a variable when defining it.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#149
# 2. What is the type of error message?
#Load error
# 3. What additional information does the interpreter provide about this type of error?
#Cannot load the require_relative file.
# 4. Where is the error in the code?
#In the <main> section of line 149
# 5. Why did the interpreter give you this error?
#You have to type out the path to the file in relation to the file that you are in.

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
  #The errors where there was no specific place that it could tell where the error was were the ones that were the most difficult to read.
#Were you able to determine why each error message happened based on the code?
  #Most of the time I could tell what was wrong but it was also difficult because I wasn't sure what the programing was trying to achieve.
#When you encounter errors in your future code, what process will you follow to help you deug?
  #I will definitely look at where the error is occuring and try to deduct hints from the extra info that it gives me.