// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: David Walden.

// Pseudocode
// input: integer
// output: string
// steps:
// define function
// convert integer to string
// reverse string
// put string characters in array
// iterate through array
// every 4 character insert comma
// reverse array
// combine array into single string
// return string


// Initial Solution
var separateComma = function(input_integer) {
  var i = input_integer.toString();
  var characters = i.split("");
  var rev_characters = characters.reverse();
  var add_comma = [];
  for (var counter = 0; counter < rev_characters.length; counter++){
    if ((counter+1) % 4 == 0)
     var add_comma = rev_characters.splice(counter, 0, ',');


//     if ((counter+1) % 4 == 0)  {
//        add_comma = ',';
//     }  else {
//        add_comma[counter] = rev_characters[counter];
//     }


  }

  return rev_characters.reverse().join("");

  // console.log(add_comma);
}



// Refactored Solution

var separateComma = function(input_integer) {
  var i = input_integer.toString();
  var characters = i.split("");
  var rev_characters = characters.reverse();
  for (var counter = 0; counter < rev_characters.length; counter++){
    if ((counter+1) % 4 == 0)
     rev_characters.splice(counter, 0, ',');

  }

  return rev_characters.reverse().join("");

}




// Your Own Tests (OPTIONAL)

console.log(separateComma(2234998759675));

  // separateComma(2234);

/*
What was it like to approach the problem from the perspective of Javascript? Did you approach the problem differently?
Our approach was actually the same to the approach we both used with Ruby. After discussing how we wanted to solve this challenge, we felt that that was still the best way.

What did you learn about iterating over arrays in JavaScript?
I learned alot about JavaScript syntax in this challenge. We had some difficulty knowing where to put brackets and semicolons.

What was different about solving this problem in JavaScript?
Knowing how the program will read the code was what was different this time around, also, knowing the different syntax.

What built-in methods did you find to incorporate in your refactored solution?
We used a lot of built-in methods including, reverse, split, to string, splice, and join.
/*