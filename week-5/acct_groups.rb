#Input: An array of people's names as strings
#Output: Arrays consisting of the names of people in each group. (MVP)
#Psuedocode
  #create a method that takes an list(array) as an argument
  #mix up the list
  #split up the list into groups of 4
  #display the groups

list = ["Aarthi Gurusami","Abid Ramay","Adam Zmudzinski","Alex Hendrickson","Alex Wen","Alicia Briceland","Allison Paul","Andrey Slonski","Anna Lansfjord","Ben Sanecki","Benjamin Flores","Buck Melton","Caitlin Hoffman","Carlos Gonzalez","Chand Nirankari","Che Sanders","Chris Henderson","Christopher Lamkin","Cristyn Budzyna","Dan Park","David Ramirez","Ruo Yo Tao","David Walden","Bill Deng","Denny Jovic","Dexter Moran","Diana Ozemebhoya Eromosele","Dominick Lombardo","Elan Kvitko","Elizabeth Alexander","Elizabeth Brown","Ena Bekanovic","Esther Leytush","Evan Druce","Frank Lam","Gabriel Zurita","Jack Thatcher","Jason Milfred","John Colella","Jonathan Kaplan","Kelson Adams","Kristal Lam","Kunal Patel","Leland Meiners","Liam Binell","Lisa Buch","Lisa Dannewitz","Lyudmila Arinich","Mohamed Monekata","Parker Smathers","Patrick Dewitte","Renan Martins","Riley Scheid","Robin Soubry","Samantha Holmes","Scott Southard","Shaun Sweet","Shin Wang","Sibel Ergener","Simon Thomas","Talal Talhouk","Ted Bogin","Traci Fong","Victoria Solorzano"]

#Initial solution
def acct_groups(list_of_names)
  new_list = list_of_names.shuffle.each_slice(4).to_a
  new_list.each do |x|
    p x
  end
end


acct_groups(list)

#Refactored solution
def acct_groups(list_of_names)
new_list = list_of_names.shuffle.each_slice(4).to_a

#Reflect
#What was the most interesting and most difficult part of this challenge?
#The most interesting part of this challenge was that I feel myself getting in the habit of thinking like a programmer, the most difficult part was trying to refactor, since my code was already full of methods.

#Do you feel you are improving in your ability to write pseudocode and break the problem down?
#I do feel that I'm getting better at writing out pseudocode. It helps organize my thoughts in a linear way.

#Was your approach for automating this task a good solution? What could have made it even better?
#It's a good solution for now, but it could be better if returned how many people there were in each group.

#What data structure did you decide to store the accountability groups in and why?
#I chose to store the accountability groups in an array because I was mainly interested in the values of the list and didn't need a key related to each.

#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#It was difficult to gather anything from refactoring because my intital solution was quite clean already. However, I did learn that I could take away the code that prints to the console because if this were used within another method, that wouldn't be needed.The new Ruby methods I learned were shuffle and each_slice.
