 // JavaScript Olympics

// I paired [with: John Kaplan] on this challenge.

// This challenge took me [1.6] hours.


// Warm Up




// Bulk Up

var athlete1 = {
  name: "Lebron James",
  event: "basketball",
}

var athlete2 = {
  name: "Steph Curry",
  event: "basketball",
}

var athleteArray = [ athlete1, athlete2]

var win = function (array){
  for (var counter = 0; counter < athleteArray.length; counter ++){
    array[counter].win = array[counter].name + " won the " + array[counter].event + " event!"
    //return array
    console.log(array[counter].win)
  }

}
win(athleteArray)

// Jumble your words

var jumble = function(string){
  var new_string = string.split("").reverse().join("");
  console.log(new_string)
}

jumble("Jumble your words!")


// 2,4,6,8

var array = [1,2,3,4,5,6,7,8,9]

var even = function(new_array) {
  var even_array = [];
  for (var counter = 0; counter < array.length; counter++){
   if (new_array[counter] % 2 == 0)
    even_array.push(new_array[counter]);
  }


  //var even_array = new_array.filter(even);

  //new_array.filter(even);
  console.log(even_array)
}

even(array)


// "We built this city"




function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

// function


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


/*
What JavaScript knowledge did you solidify in this challenge?
A lot of syntax questions were solidified in this challenge as well as more small details about JavaScript like in the Athlete function when we had to know what the .constructor method was and how "this" would help us.

What are constructor functions?
Constructor functions are functions that are declared straight rather than assaigning it to a variable.

How are constructors diferent from Ruby classes(in your research)?
Constructors are more like methods because they hold a block of code.


*/