# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # make an hash
  # break up string by space
  # add each new string to the hash as a key
  # set default quantity for the value
  # print the list to the console [can you use one of your other methods here?]
# output: return the hash

def create_list (string)
  list = Hash.new(0)
  goods = string.split(" ")
  goods.each {|good| list[good] += 1}
  return list
end

our_list = create_list("carrots apples cereal pizza pizza pizza")
# lauras_list = create_list("chips kale grapes pepperoni")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  #define a method that takes two arguments (the name and quantity)
  #if the name exits in the hash increase the quanitity
  #else add the name to hash
# output: updated list

def add_to_list (item, quantity,list)
  if list[item]
    list[item] += quantity
  else
    list[item] = quantity
  end
end

add_to_list("orange", 1, our_list)
p our_list


# Method to remove an item from the list
# input:the item that you want to remove
# steps:
  #define method that takes two arguments (item name and list)
  #if item exists delete it
  #else say the list doesn't have the item
# output:updated list

def remove_from_list (item, list)
  if list[item]
    list.delete(item)
  else
    puts "The list doesn't have this item"
  end
end

remove_from_list("cereal", our_list)
p our_list

# Method to update the quantity of an item
# input:the item and the quantity
# steps:
  #define a method that takes three arguments (the item name and the quantity and the list)
  #if the item exists, update the quantity
  #else say the list doesn't have the item
# output:update list

def update_list (item, quantity, list)
  if list[item]
    list[item] = quantity
  else
    puts "The list doesn't have this item"
  end
end

update_list("carrots", 4, our_list)
p our_list

# Method to print a list and make it look pretty
# input: list
# steps: define a method that takes one argument (list)
# For each item/quantity, print to console
# output: items/quantities in a pretty fashion
def print_list (list)
  list.each {|item, quantity| puts "#{item}: #{quantity}"}
end

print_list(our_list)

#What did you learn about pseudocode from working on this challenge?
#I learned that psuedocode is a really helpful tool. It helps you understand what you are doing better and makes my thinking process more organized.

#What are the tradeoffs of using Arrays and Hashes for this challenge?
#Hashes were best for this challenge because you needed to modify two different inputs. Arrays require more work because you have to always consider the static "keys", which are the index numbers, that are given.

#What does a method return?
#A method returns the last declared variable.

#What kind of things can you pass into methods as arguments?
#You can pass strings, integers, arrays, hashes, as well as other methods.

#How can you pass information between methods?
#You can include the info you want in the arguements so that they are readable by the new method.

#What concepts were solidified in this challenge, and what concepts are stull confusing?
#The each iterator, and the idea of passing information between arguments were really solidified in this challenge. One concept that I am unsure about and would want to know more about is how one would have solved this challenge with an array.