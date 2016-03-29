/*
Gradebook from Names and Scores

I worked on this challenge with Victoria Solorzano.
This challenge took me [.9] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]




// __________________________________________
// Write your code below.

// var gradebook = {
//                 "Joseph": {testScores: scores[0]},
//                 "Susan": {testScores: scores[1]},
//                 "William": {testScores: scores[2]},
//                 "Elizabeth": {testScores: scores[3]},
//                 };


// gradebook.addScore = function (name,score) {
//   this[name].testScores.push(score);

// };

// gradebook.getAverage = function (name) {
//   return average(gradebook[name].testScores)
// };

// function average(array) {
//   var total = 0;
//   for (var i = 0; i < array.length; i++) {

//     total += array[i];

// };
//   return total/array.length;

// }

// console.log(gradebook.getAverage("Susan"));

// Example:

var total = [0, 1, 2, 3].reduce(function(a, b) {
  return a + b;
});
// total == 6

// __________________________________________
// Refactored Solution


var gradebook = {
                "Joseph": {testScores: scores[0]},
                "Susan": {testScores: scores[1]},
                "William": {testScores: scores[2]},
                "Elizabeth": {testScores: scores[3]},
                };


gradebook.addScore = function (name,score) {
  this[name].testScores.push(score);

};

gradebook.getAverage = function (name) {
  return average(gradebook[name].testScores)
};

function average(array) {

  var total = array.reduce(function(a,b) {return a + b; });
  return total/array.length;

}

console.log(gradebook.getAverage("Susan"));






// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?
I learned how to add multiple functions to objects and that its more DRY if you add them outside of the function itself.

How did you iterate over nested arrays in JavaScript?
We resulted to using a lot of methods that essentially did the work for us.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?
We used the reduce method which is one that I had never used before. What it does is adds all of the elements of an array together to get a sum. You tell it the order that you want it to add in the arguements.
*/








// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)