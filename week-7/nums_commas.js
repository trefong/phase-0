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
  // var add_comma = [];
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

