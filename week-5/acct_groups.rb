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


