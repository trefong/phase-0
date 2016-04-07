//Psuedocode
//input:A string of items separated by a space
//output:A list the items with the amount of times it appears in the list in the form of an object
//steps:
  //Create a function called Lists that can make new instances of each list that you put into it.
  //split the string by space
  //Add each list item as a property of the object and the quantity as the value.

//function List (string){
  //var new_array = string.split(" ");
  //for (var i = 0; i < new_array.length; i++){
       //new_array[i] += 1;
  //}
//}

//var list1 = new List ("apple carrot lettuce");
//console.log(list1)

var make_list = function(string){
  var new_list = {};
  var new_array = string.split(" ");
  for (var i = 0; i < new_array.length; i++){
    new_list[new_array[i]] = 1;
  }
  return new_list; }

var list_one = make_list("carrot apple lettuce")


//input: An item and the list name
//output: An updated list of items and their quantitites
  //Create a method that can be called onto the new objects made by Lists called add.
  //Takes the input item and adds them as new properties to the corresponding list.

var add_list = function(item, quantity, list_name){
  list_name[item] = quantity;
  return list_name;
}
add_list("orange", 2, list_one)


//input: An item and list name
//output: An updated list without the input item.
  //steps:
  //Create a method that can be called onto the new objects made by Lists called remove.
  //If the item is in the list, remove the item.
  //If the item is already not on the list, print that the item doesn't exist on the list.

var remove_list = function(item, list_name){
  delete list_name[item];
  return list_name;
}

remove_list("apple", list_one)

//input: Item name, quantity, and list name
//output:An updated list with the correct quantitities
  //steps:
  //Create a method that can be called onto the new objects made by Lists called update.
  //If the item is not on the list, print this items doesn't exits.
  //Otherwise, update the item with the new amount.

var update_list = function(item, quantity, list_name){
  if(list_name[item]){
    list_name[item] = quantity;
    return list_name;
  }
  else{
    console.log("The item doesn't exist!")
  }
}
update_list("lettuce", 3, list_one)


//input:The object made by the List function
//output:A list of items and the quantities
  //steps:
  //Iterate through the object and print the property and the value of the property, each on a new line.
var print_list = function(list_name){
  for (var item in list_name){
    console.log(item, list_name[item])
  }
}
print_list(list_one)

//Refactor


var make_list = function(string){
  var new_list = {};
  var new_array = string.split(" ");
  for (var i = 0; i < new_array.length; i++){
    new_list[new_array[i]] = 1;
  }
  return new_list; }

var list_one = make_list("carrot apple lettuce")

var add_list = function(item, quantity, list_name){
  list_name[item] = quantity;
  return list_name;
}
add_list("orange", 2, list_one)

var remove_list = function(item, list_name){
  delete list_name[item];
  return list_name;
}

remove_list("apple", list_one)

var update_list = function(item, quantity, list_name){
  if(list_name[item]){
    list_name[item] = quantity;
    return list_name;
  }
  else{
    console.log("The item doesn't exist!")
  }
}
update_list("lettuce", 3, list_one)

var print_list = function(list_name){
  for (var item in list_name){
    console.log(item, list_name[item])
  }
}
print_list(list_one)


//Reflection
/*
What concepts did you solidify in working on this challenge?
I solidified the concept of making functions and how they can interact with eachother. At first, I was struggling with how I can have a function that will be able to act onto a result of another funciton.

What was the most difficult part of this challenge?
The most difficult part of this challenge was trying to understand how to pass information from one function to another.

Did an array or object make more sense to use? Why?
In this instance an object made more sense to use because you are manipulating two attrubutes of a thing which translates best into a key and value pair. */